require 'test_helper'

class PurchaseRecordsControllerTest < ActionController::TestCase
  setup do
    @purchase_record = purchase_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_record" do
    assert_difference('PurchaseRecord.count') do
      post :create, purchase_record: { datetime: @purchase_record.datetime, id: @purchase_record.id, source: @purchase_record.source }
    end

    assert_redirected_to purchase_record_path(assigns(:purchase_record))
  end

  test "should show purchase_record" do
    get :show, id: @purchase_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_record
    assert_response :success
  end

  test "should update purchase_record" do
    patch :update, id: @purchase_record, purchase_record: { datetime: @purchase_record.datetime, id: @purchase_record.id, source: @purchase_record.source }
    assert_redirected_to purchase_record_path(assigns(:purchase_record))
  end

  test "should destroy purchase_record" do
    assert_difference('PurchaseRecord.count', -1) do
      delete :destroy, id: @purchase_record
    end

    assert_redirected_to purchase_records_path
  end
end
