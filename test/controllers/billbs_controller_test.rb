require 'test_helper'

class BillbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billbs_index_url
    assert_response :success
  end

  test "should get show" do
    get billbs_show_url
    assert_response :success
  end

  test "should get edit" do
    get billbs_edit_url
    assert_response :success
  end

  test "should get new" do
    get billbs_new_url
    assert_response :success
  end

end
