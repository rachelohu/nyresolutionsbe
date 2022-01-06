require "test_helper"

class ResolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resolution = resolutions(:one)
  end

  test "should get index" do
    get resolutions_url, as: :json
    assert_response :success
  end

  test "should create resolution" do
    assert_difference('Resolution.count') do
      post resolutions_url, params: { resolution: { details: @resolution.details, subject: @resolution.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show resolution" do
    get resolution_url(@resolution), as: :json
    assert_response :success
  end

  test "should update resolution" do
    patch resolution_url(@resolution), params: { resolution: { details: @resolution.details, subject: @resolution.subject } }, as: :json
    assert_response 200
  end

  test "should destroy resolution" do
    assert_difference('Resolution.count', -1) do
      delete resolution_url(@resolution), as: :json
    end

    assert_response 204
  end
end
