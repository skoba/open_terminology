class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :language
      t.string :concept_id
      t.string :rubric

      t.timestamps
    end
  end
end
