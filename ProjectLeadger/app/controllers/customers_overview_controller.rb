class CustomersOverviewController < ApplicationController
  # Overview is concept for a view that customer could use to manage their profile, their projects and then issue billing and invoices 

  def index
    @customers = Customer.all   

  end
end
