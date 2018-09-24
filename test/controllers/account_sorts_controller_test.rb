require 'test_helper'

class AccountSortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_sort = account_sorts(:one)
  end

  test "should get index" do
    get account_sorts_url
    assert_response :success
  end

  test "should get new" do
    get new_account_sort_url
    assert_response :success
  end

  test "should create account_sort" do
    assert_difference('AccountSort.count') do
      post account_sorts_url, params: { account_sort: { sort: @account_sort.sort } }
    end

    assert_redirected_to account_sort_url(AccountSort.last)
  end

  test "should show account_sort" do
    get account_sort_url(@account_sort)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_sort_url(@account_sort)
    assert_response :success
  end

  test "should update account_sort" do
    patch account_sort_url(@account_sort), params: { account_sort: { sort: @account_sort.sort } }
    assert_redirected_to account_sort_url(@account_sort)
  end

  test "should destroy account_sort" do
    assert_difference('AccountSort.count', -1) do
      delete account_sort_url(@account_sort)
    end

    assert_redirected_to account_sorts_url
  end
end
