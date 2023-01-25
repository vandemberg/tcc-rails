require "application_system_test_case"

class SocialGroupsTest < ApplicationSystemTestCase
  setup do
    @social_group = social_groups(:one)
  end

  test "visiting the index" do
    visit social_groups_url
    assert_selector "h1", text: "Social groups"
  end

  test "should create social group" do
    visit social_groups_url
    click_on "New social group"

    fill_in "Email", with: @social_group.email
    fill_in "Group type", with: @social_group.group_type
    fill_in "Name", with: @social_group.name
    fill_in "Neighbourhood", with: @social_group.neighbourhood_id
    fill_in "Notes", with: @social_group.notes
    fill_in "Person", with: @social_group.person_id
    fill_in "Phone", with: @social_group.phone
    click_on "Create Social group"

    assert_text "Social group was successfully created"
    click_on "Back"
  end

  test "should update Social group" do
    visit social_group_url(@social_group)
    click_on "Edit this social group", match: :first

    fill_in "Email", with: @social_group.email
    fill_in "Group type", with: @social_group.group_type
    fill_in "Name", with: @social_group.name
    fill_in "Neighbourhood", with: @social_group.neighbourhood_id
    fill_in "Notes", with: @social_group.notes
    fill_in "Person", with: @social_group.person_id
    fill_in "Phone", with: @social_group.phone
    click_on "Update Social group"

    assert_text "Social group was successfully updated"
    click_on "Back"
  end

  test "should destroy Social group" do
    visit social_group_url(@social_group)
    click_on "Destroy this social group", match: :first

    assert_text "Social group was successfully destroyed"
  end
end
