require "test_helper"

class InspectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
    @inspection = inspections(:one)
  end

  test "should get index" do
    get inspections_url
    assert_response :success
  end

  test "should get new" do
    get new_inspection_url
    assert_response :success
  end

  test "should create inspection" do
    assert_difference("Inspection.count") do
      post inspections_url, params: { inspection: { description: @inspection.description, inspection_date: @inspection.inspection_date, inspection_score: @inspection.inspection_score, inspection_type: @inspection.inspection_type, restaurant_id: @inspection.restaurant_id, risk_category: @inspection.risk_category, violation_date: @inspection.violation_date, violation_type: @inspection.violation_type } }
    end

    assert_redirected_to inspection_url(Inspection.last)
  end

  test "should show inspection" do
    get inspection_url(@inspection)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspection_url(@inspection)
    assert_response :success
  end

  test "should update inspection" do
    patch inspection_url(@inspection), params: { inspection: { description: @inspection.description, inspection_date: @inspection.inspection_date, inspection_score: @inspection.inspection_score, inspection_type: @inspection.inspection_type, restaurant_id: @inspection.restaurant_id, risk_category: @inspection.risk_category, violation_date: @inspection.violation_date, violation_type: @inspection.violation_type } }
    assert_redirected_to inspection_url(@inspection)
  end

  test "should destroy inspection" do
    assert_difference("Inspection.count", -1) do
      delete inspection_url(@inspection)
    end

    assert_redirected_to inspections_url
  end
end
