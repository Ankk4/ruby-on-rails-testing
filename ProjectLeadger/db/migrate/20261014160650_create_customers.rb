class CreateCustomers < ActiveRecord::Migration[8.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :shortname
      t.string :businessId
      t.boolean :active
      t.boolean :hasContract

      t.timestamps
    end
  end
end
