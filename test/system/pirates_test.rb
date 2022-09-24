require "application_system_test_case"

class PiratesTest < ApplicationSystemTestCase
  setup do
    @pirate = pirates(:one)
  end

  test "visiting the index" do
    visit pirates_url
    assert_selector "h1", text: "Pirates"
  end

  test "should create pirate" do
    visit pirates_url
    click_on "New pirate"

    fill_in "Nome", with: @pirate.nome
    fill_in "Recompensa", with: @pirate.recompensa
    fill_in "Tripulacao", with: @pirate.tripulacao
    click_on "Create Pirate"

    assert_text "Pirate was successfully created"
    click_on "Back"
  end

  test "should update Pirate" do
    visit pirate_url(@pirate)
    click_on "Edit this pirate", match: :first

    fill_in "Nome", with: @pirate.nome
    fill_in "Recompensa", with: @pirate.recompensa
    fill_in "Tripulacao", with: @pirate.tripulacao
    click_on "Update Pirate"

    assert_text "Pirate was successfully updated"
    click_on "Back"
  end

  test "should destroy Pirate" do
    visit pirate_url(@pirate)
    click_on "Destroy this pirate", match: :first

    assert_text "Pirate was successfully destroyed"
  end
end
