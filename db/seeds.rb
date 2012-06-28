require 'xmlsimple'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# openehr_term = XmlSimple.xml_in(File.open('db/seeds/openehr_terminology.xml'))
# language_seed = openehr_term['Language'].map do |item|
#   {code: item['code'], description: item['Description']}
# end
# languages = Language.create(language_seed)

# concept_seed = openehr_term['Concept'].map do |item|
#   {language: item['Language'], concept_id: item['ConceptID'], rubric: item['Rubric']}
# end
# concepts = Concept.create(concept_seed)
openehr_terms = XmlSimple.xml_in(File.open('db/seeds/openehr_terminology_en.xml'))
external_terms = XmlSimple.xml_in(File.open('db/seeds/external_terminologies_en.xml'))
language_seed = external_terms['codeset'][2]['code'].map do |lang|
  { code: lang['value'], description: lang['Description'] }
end
Language.create(language_seed)

media_type_seed = external_terms['codeset'][3]['code'].map do |type|
  { value: type['value'] }
end
MediaType.create(media_type_seed)

country_seed = external_terms['codeset'][0]['code'].map do |country|
  { code: country['value'], description: country['description'] }
end
Country.create(country_seed)

openehr_terms['codeset'].map do |codesets|
  issuer = Issuer.create( name: codesets['issuer'])
  codeset = Codeset.create(issuer_id: issuer.id,
                           openehr_id: codesets['openehr_id'],
                           external_id: codesets['external_id'])

  codesets['code'].map do |codes|
    codes.map do |code|
      Code.create(codeset_id: codeset.id,
                  value: code[1])
    end
  end
end

openehr_terms['group'].each do |concepts|
  group = Group.create(name: concepts['name'])

  concepts['concept'].map do |concept|
    Concept.create(code: concept['id'],
                   group_id: group.id,
                   rubric: concept['rubric'])
  end
end
