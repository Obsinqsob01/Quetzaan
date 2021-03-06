class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.decimal :total_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
