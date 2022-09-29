require "application_system_test_case"

class IslandsTest < ApplicationSystemTestCase
  setup do
    @island = islands(:one)
  end

  test "visiting the index" do
    visit islands_url
    assert_selector "h1", text: "Islands"
  end

  test "should create island" do
    visit islands_url
    click_on "New island"

    fill_in "Arc", with: @island.arc
    fill_in "Name", with: @island.name
    click_on "Create Island"

    assert_text "Island was successfully created"
    click_on "Back"
  end

  test "should update Island" do
    visit island_url(@island)
    click_on "Edit this island", match: :first

    fill_in "Arc", with: @island.arc
    fill_in "Name", with: @island.name
    click_on "Update Island"

    assert_text "Island was successfully updated"
    click_on "Back"
  end

  test "should destroy Island" do
    visit island_url(@island)
    click_on "Destroy this island", match: :first

    assert_text "Island was successfully destroyed"
  end
end
