require "application_system_test_case"

class RopsTest < ApplicationSystemTestCase
  setup do
    @rop = rops(:one)
  end

  test "visiting the index" do
    visit rops_url
    assert_selector "h1", text: "Rops"
  end

  test "should create rop" do
    visit rops_url
    click_on "New rop"

    fill_in "Name", with: @rop.name
    fill_in "Neighbourhood", with: @rop.neighbourhood_id
    click_on "Create Rop"

    assert_text "Rop was successfully created"
    click_on "Back"
  end

  test "should update Rop" do
    visit rop_url(@rop)
    click_on "Edit this rop", match: :first

    fill_in "Name", with: @rop.name
    fill_in "Neighbourhood", with: @rop.neighbourhood_id
    click_on "Update Rop"

    assert_text "Rop was successfully updated"
    click_on "Back"
  end

  test "should destroy Rop" do
    visit rop_url(@rop)
    click_on "Destroy this rop", match: :first

    assert_text "Rop was successfully destroyed"
  end
end
