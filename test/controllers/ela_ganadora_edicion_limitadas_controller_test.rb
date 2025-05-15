require "test_helper"

class ElaGanadoraEdicionLimitadasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ela_ganadora_edicion_limitadas_index_url
    assert_response :success
  end
end
