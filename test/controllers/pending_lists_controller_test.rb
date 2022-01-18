require "test_helper"

class PendingListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pending_list = pending_lists(:one)
  end

  test "should get index" do
    get pending_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_pending_list_url
    assert_response :success
  end

  test "should create pending_list" do
    assert_difference("PendingList.count") do
      post pending_lists_url, params: { pending_list: {  } }
    end

    assert_redirected_to pending_list_url(PendingList.last)
  end

  test "should show pending_list" do
    get pending_list_url(@pending_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_pending_list_url(@pending_list)
    assert_response :success
  end

  test "should update pending_list" do
    patch pending_list_url(@pending_list), params: { pending_list: {  } }
    assert_redirected_to pending_list_url(@pending_list)
  end

  test "should destroy pending_list" do
    assert_difference("PendingList.count", -1) do
      delete pending_list_url(@pending_list)
    end

    assert_redirected_to pending_lists_url
  end
end
