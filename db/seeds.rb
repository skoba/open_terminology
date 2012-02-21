require 'xmlsimple'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
openehr_term = XmlSimple.xml_in(File.open('db/seeds/openehr_terminology.xml'))
language_seed = openehr_term['Language'].map do |item|
  {code: item['code'], description: item['Description']}
end
languages = Language.create(language_seed)

concept_seed = openehr_term['Concept'].map do |item|
  {language: item['Language'], concept_id: item['ConceptID'], rubric: item['Rubric']}
end
concepts = Concept.create(concept_seed)
