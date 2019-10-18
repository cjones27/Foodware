require "application_system_test_case"

class FoodplacesTest < ApplicationSystemTestCase
  setup do
    @foodplace = foodplaces(:one)
  end

  test "visiting the index" do
    visit foodplaces_url
    assert_selector "h1", text: "Foodplaces"
  end

  test "creating a Foodplace" do
    visit foodplaces_url
    click_on "New Foodplace"

    fill_in "Address", with: @foodplace.address
    fill_in "Email", with: @foodplace.email
    fill_in "Name", with: @foodplace.name
    fill_in "Phone", with: @foodplace.phone
    fill_in "Score", with: @foodplace.score
    click_on "Create Foodplace"

    assert_text "Foodplace was successfully created"
    click_on "Back"
  end

  test "updating a Foodplace" do
    visit foodplaces_url
    click_on "Edit", match: :first

    fill_in "Address", with: @foodplace.address
    fill_in "Email", with: @foodplace.email
    fill_in "Name", with: @foodplace.name
    fill_in "Phone", with: @foodplace.phone
    fill_in "Score", with: @foodplace.score
    click_on "Update Foodplace"

    assert_text "Foodplace was successfully updated"
    click_on "Back"
  end

  test "destroying a Foodplace" do
    visit foodplaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foodplace was successfully destroyed"
  end
end
