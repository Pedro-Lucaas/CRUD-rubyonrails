require "application_system_test_case"

class HardwaresTest < ApplicationSystemTestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "visiting the index" do
    visit hardwares_url
    assert_selector "h1", text: "Hardwares"
  end

  test "creating a Hardware" do
    visit hardwares_url
    click_on "New Hardware"

    fill_in "Assembly method", with: @hardware.assembly_method
    fill_in "Product", with: @hardware.product_id
    click_on "Create Hardware"

    assert_text "Hardware was successfully created"
    click_on "Back"
  end

  test "updating a Hardware" do
    visit hardwares_url
    click_on "Edit", match: :first

    fill_in "Assembly method", with: @hardware.assembly_method
    fill_in "Product", with: @hardware.product_id
    click_on "Update Hardware"

    assert_text "Hardware was successfully updated"
    click_on "Back"
  end

  test "destroying a Hardware" do
    visit hardwares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hardware was successfully destroyed"
  end
end
