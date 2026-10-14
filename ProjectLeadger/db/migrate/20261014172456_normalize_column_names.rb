class NormalizeColumnNames < ActiveRecord::Migration[8.1]
  def change
    rename_column :projects, :Customers_id, :customer_id
    rename_column :events, :Projects_id, :project_id

    rename_column :projects, :hourlyRate, :hourly_rate
    rename_column :projects, :monthlyBudget, :monthly_budget

    rename_column :customers, :businessId, :business_id
    rename_column :customers, :hasContract, :has_contract
  end
end
