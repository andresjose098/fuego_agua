require "test_helper"

class VelaGanadoraEdicionLimitadasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vela_ganadora_edicion_limitadas_index_url
    assert_response :success
  end
end
