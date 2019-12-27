require 'test_helper'

class PaketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paket = pakets(:one)
  end

  test "should get index" do
    get pakets_url
    assert_response :success
  end

  test "should get new" do
    get new_paket_url
    assert_response :success
  end

  test "should create paket" do
    assert_difference('Paket.count') do
      post pakets_url, params: { paket: { desk: @paket.desk, exclude: @paket.exclude, harga: @paket.harga, include: @paket.include, jenispaket: @paket.jenispaket, namapaket: @paket.namapaket, supplier_id: @paket.supplier_id } }
    end

    assert_redirected_to paket_url(Paket.last)
  end

  test "should show paket" do
    get paket_url(@paket)
    assert_response :success
  end

  test "should get edit" do
    get edit_paket_url(@paket)
    assert_response :success
  end

  test "should update paket" do
    patch paket_url(@paket), params: { paket: { desk: @paket.desk, exclude: @paket.exclude, harga: @paket.harga, include: @paket.include, jenispaket: @paket.jenispaket, namapaket: @paket.namapaket, supplier_id: @paket.supplier_id } }
    assert_redirected_to paket_url(@paket)
  end

  test "should destroy paket" do
    assert_difference('Paket.count', -1) do
      delete paket_url(@paket)
    end

    assert_redirected_to pakets_url
  end
end
