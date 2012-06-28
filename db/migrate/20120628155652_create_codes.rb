class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :codeset_id
      t.string :value

      t.timestamps
    end
  end
end
