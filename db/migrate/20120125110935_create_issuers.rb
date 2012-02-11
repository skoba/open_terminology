class CreateIssuers < ActiveRecord::Migration
  def change
    create_table :issuers do |t|
      t.string :vsab
      t.string :source

      t.timestamps
    end
  end
end
