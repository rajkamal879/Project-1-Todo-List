require "application_system_test_case"

class PendingListsTest < ApplicationSystemTestCase
  setup do
    @pending_list = pending_lists(:one)
  end

  test "visiting the index" do
    visit pending_lists_url
    assert_selector "h1", text: "Pending lists"
  end

  test "should create pending list" do
    visit pending_lists_url
    click_on "New pending list"

    click_on "Create Pending list"

    assert_text "Pending list was successfully created"
    click_on "Back"
  end

  test "should update Pending list" do
    visit pending_list_url(@pending_list)
    click_on "Edit this pending list", match: :first

    click_on "Update Pending list"

    assert_text "Pending list was successfully updated"
    click_on "Back"
  end

  test "should destroy Pending list" do
    visit pending_list_url(@pending_list)
    click_on "Destroy this pending list", match: :first

    assert_text "Pending list was successfully destroyed"
  end
end
