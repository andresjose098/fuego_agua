require "test_helper"

class ForoVelasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foro_velas_index_url
    assert_response :success
  end
end
