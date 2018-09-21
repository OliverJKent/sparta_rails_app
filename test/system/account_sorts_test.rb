require "application_system_test_case"

class AccountSortsTest < ApplicationSystemTestCase
  setup do
    @account_sort = account_sorts(:one)
  end

  test "visiting the index" do
    visit account_sorts_url
    assert_selector "h1", text: "Account Sorts"
  end

  test "creating a Account sort" do
    visit account_sorts_url
    click_on "New Account Sort"

    fill_in "Sort", with: @account_sort.sort
    click_on "Create Account sort"

    assert_text "Account sort was successfully created"
    click_on "Back"
  end

  test "updating a Account sort" do
    visit account_sorts_url
    click_on "Edit", match: :first

    fill_in "Sort", with: @account_sort.sort
    click_on "Update Account sort"

    assert_text "Account sort was successfully updated"
    click_on "Back"
  end

  test "destroying a Account sort" do
    visit account_sorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account sort was successfully destroyed"
  end
end
