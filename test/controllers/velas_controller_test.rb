require "test_helper"

class VelasControllerTest < ActionDispatch::IntegrationTest
  test "should get personalizar" do
    get velas_personalizar_url
    assert_response :success
  end
end
