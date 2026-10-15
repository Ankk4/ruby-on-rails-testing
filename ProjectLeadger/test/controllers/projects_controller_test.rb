require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "new form submits under the selected customer" do
    customer = customers(:one)
    get new_customer_project_url(customer)

    assert_response :success
    assert_select "form[action=?]", customer_projects_path(customer)
  end

  test "creation assigns the URL customer and saves billing fields" do
    customer = customers(:one)

    assert_difference("Project.count", 1) do
      post customer_projects_url(customer), params: {
        project: { name: "Website", hourly_rate: "85.50", monthly_budget: "2000.00", customer_id: customers(:two).id }
      }
    end

    project = Project.order(:id).last
    assert_equal customer, project.customer
    assert_equal BigDecimal("85.50"), project.hourly_rate
    assert_equal BigDecimal("2000.00"), project.monthly_budget
    assert_redirected_to overview_customer_url(customer)
    follow_redirect!
    assert_response :success
  end

  test "unknown customer does not create a project" do
    assert_no_difference("Project.count") do
      post customer_projects_url(customer_id: 0), params: { project: { name: "Website" } }
    end

    assert_response :not_found
  end
end
