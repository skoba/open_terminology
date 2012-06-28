class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :code
      t.integer :group_id
      t.string :rubric

      t.timestamps
    end
  end
end
