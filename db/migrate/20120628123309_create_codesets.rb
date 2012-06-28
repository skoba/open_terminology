class CreateCodesets < ActiveRecord::Migration
  def change
    create_table :codesets do |t|
      t.integer :issuer_id
      t.string :openehr_id
      t.string :external_id

      t.timestamps
    end
  end
end
