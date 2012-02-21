class AddLanguageIdToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :language_id, :integer
  end
end
