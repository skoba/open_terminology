class ModifyLanguageCodeToIdConcepts < ActiveRecord::Migration
  def up
    Concept.update_all('language_id = 41', "language = 'en'")
    Concept.update_all('language_id = 117', "language = 'tr'")
    Concept.update_all('language_id = 179', "language = 'de'")
    Concept.update_all('language_id = 157', "language = 'en-us'")
    remove_column :concepts, :language
  end

  def down
    add_column :concepts, :language
  end
end
