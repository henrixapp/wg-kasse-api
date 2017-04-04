require 'test_helper'

class BillingItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_item = billing_items(:one)
  end

  test "should get index" do
    get billing_items_url, as: :json
    assert_response :success
  end

  test "should create billing_item" do
    assert_difference('BillingItem.count') do
      post billing_items_url, params: { billing_item: { author_id: @billing_item.author_id, price: @billing_item.price, title: @billing_item.title } }, as: :json
    end

    assert_response 201
  end

  test "should show billing_item" do
    get billing_item_url(@billing_item), as: :json
    assert_response :success
  end

  test "should update billing_item" do
    patch billing_item_url(@billing_item), params: { billing_item: { author_id: @billing_item.author_id, price: @billing_item.price, title: @billing_item.title } }, as: :json
    assert_response 200
  end

  test "should destroy billing_item" do
    assert_difference('BillingItem.count', -1) do
      delete billing_item_url(@billing_item), as: :json
    end

    assert_response 204
  end
end
