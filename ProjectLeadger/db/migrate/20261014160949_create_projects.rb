class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.decimal :hourlyRate
      t.decimal :monthlyBudget
      t.boolean :active
      t.references :Customers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
