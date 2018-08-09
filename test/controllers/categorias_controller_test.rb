require 'test_helper'

class CategoriasControllerTest < ActionDispatch::IntegrationTest
  test "should get categorias" do
    get categorias_categorias_url
    assert_response :success
  end

end
