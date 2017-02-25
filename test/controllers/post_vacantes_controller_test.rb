require 'test_helper'

class PostVacantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_vacante = post_vacantes(:one)
  end

  test "should get index" do
    get post_vacantes_url
    assert_response :success
  end

  test "should get new" do
    get new_post_vacante_url
    assert_response :success
  end

  test "should create post_vacante" do
    assert_difference('PostVacante.count') do
      post post_vacantes_url, params: { post_vacante: { area: @post_vacante.area, carrera: @post_vacante.carrera, descripcion: @post_vacante.descripcion, nvacantes: @post_vacante.nvacantes } }
    end

    assert_redirected_to post_vacante_url(PostVacante.last)
  end

  test "should show post_vacante" do
    get post_vacante_url(@post_vacante)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_vacante_url(@post_vacante)
    assert_response :success
  end

  test "should update post_vacante" do
    patch post_vacante_url(@post_vacante), params: { post_vacante: { area: @post_vacante.area, carrera: @post_vacante.carrera, descripcion: @post_vacante.descripcion, nvacantes: @post_vacante.nvacantes } }
    assert_redirected_to post_vacante_url(@post_vacante)
  end

  test "should destroy post_vacante" do
    assert_difference('PostVacante.count', -1) do
      delete post_vacante_url(@post_vacante)
    end

    assert_redirected_to post_vacantes_url
  end
end
