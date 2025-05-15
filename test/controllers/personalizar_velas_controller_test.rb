require "test_helper"

class PersonalizarVelasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personalizar_velas_index_url
    assert_response :success
  end
end
