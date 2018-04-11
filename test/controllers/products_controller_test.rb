require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { beneficios: @product.beneficios, categoria: @product.categoria, descripcion: @product.descripcion, disponible: @product.disponible, foto2: @product.foto2, foto3: @product.foto3, foto: @product.foto, ingredientes: @product.ingredientes, nombre: @product.nombre, precio: @product.precio, tiempo: @product.tiempo, user_id: @product.user_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { beneficios: @product.beneficios, categoria: @product.categoria, descripcion: @product.descripcion, disponible: @product.disponible, foto2: @product.foto2, foto3: @product.foto3, foto: @product.foto, ingredientes: @product.ingredientes, nombre: @product.nombre, precio: @product.precio, tiempo: @product.tiempo, user_id: @product.user_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
