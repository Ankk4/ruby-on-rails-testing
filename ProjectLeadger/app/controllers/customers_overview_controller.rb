class CustomersOverviewController < ApplicationController
  # Overview is concept for a view that customer could use to manage their profile, 
  # their projects and then issue billing and invoices 

  def overview
    customer = Customer.find(params[:id])

    @overview = CustomerOverview.new(
      customer: customer,
      projects: customer.projects.includes(:events)
    )
  end
end
