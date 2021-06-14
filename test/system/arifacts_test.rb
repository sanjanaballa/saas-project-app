require "application_system_test_case"

class ArifactsTest < ApplicationSystemTestCase
  setup do
    @arifact = arifacts(:one)
  end

  test "visiting the index" do
    visit arifacts_url
    assert_selector "h1", text: "Arifacts"
  end

  test "creating a Arifact" do
    visit arifacts_url
    click_on "New Arifact"

    fill_in "Key", with: @arifact.key
    fill_in "Name", with: @arifact.name
    fill_in "Project", with: @arifact.project_id
    click_on "Create Arifact"

    assert_text "Arifact was successfully created"
    click_on "Back"
  end

  test "updating a Arifact" do
    visit arifacts_url
    click_on "Edit", match: :first

    fill_in "Key", with: @arifact.key
    fill_in "Name", with: @arifact.name
    fill_in "Project", with: @arifact.project_id
    click_on "Update Arifact"

    assert_text "Arifact was successfully updated"
    click_on "Back"
  end

  test "destroying a Arifact" do
    visit arifacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arifact was successfully destroyed"
  end
end
