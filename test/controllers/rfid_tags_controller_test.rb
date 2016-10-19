require 'test_helper'

class RfidTagsControllerTest < ActionController::TestCase
  setup do
    @rfid_tag = rfid_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfid_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfid_tag" do
    assert_difference('RfidTag.count') do
      post :create, rfid_tag: { tag_id: @rfid_tag.tag_id }
    end

    assert_redirected_to rfid_tag_path(assigns(:rfid_tag))
  end

  test "should show rfid_tag" do
    get :show, id: @rfid_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfid_tag
    assert_response :success
  end

  test "should update rfid_tag" do
    patch :update, id: @rfid_tag, rfid_tag: { tag_id: @rfid_tag.tag_id }
    assert_redirected_to rfid_tag_path(assigns(:rfid_tag))
  end

  test "should destroy rfid_tag" do
    assert_difference('RfidTag.count', -1) do
      delete :destroy, id: @rfid_tag
    end

    assert_redirected_to rfid_tags_path
  end
end
