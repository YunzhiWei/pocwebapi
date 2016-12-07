require 'test_helper'

class LoginRecordsControllerTest < ActionController::TestCase
  setup do
    @login_record = login_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_record" do
    assert_difference('LoginRecord.count') do
      post :create, login_record: { datetime: @login_record.datetime, id: @login_record.id, source: @login_record.source }
    end

    assert_redirected_to login_record_path(assigns(:login_record))
  end

  test "should show login_record" do
    get :show, id: @login_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_record
    assert_response :success
  end

  test "should update login_record" do
    patch :update, id: @login_record, login_record: { datetime: @login_record.datetime, id: @login_record.id, source: @login_record.source }
    assert_redirected_to login_record_path(assigns(:login_record))
  end

  test "should destroy login_record" do
    assert_difference('LoginRecord.count', -1) do
      delete :destroy, id: @login_record
    end

    assert_redirected_to login_records_path
  end
end
