require 'test_helper'

class TamusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tamu = tamus(:one)
  end

  test "should get index" do
    get tamus_url
    assert_response :success
  end

  test "should get new" do
    get new_tamu_url
    assert_response :success
  end

  test "should create tamu" do
    assert_difference('Tamu.count') do
      post tamus_url, params: { tamu: { driver: @tamu.driver, email: @tamu.email, hotel: @tamu.hotel, kodebooking: @tamu.kodebooking, namatamu: @tamu.namatamu, negara: @tamu.negara, note: @tamu.note, paket_id: @tamu.paket_id, published_at: @tamu.published_at, qty: @tamu.qty, telp: @tamu.telp, tglaktifitas: @tamu.tglaktifitas } }
    end

    assert_redirected_to tamu_url(Tamu.last)
  end

  test "should show tamu" do
    get tamu_url(@tamu)
    assert_response :success
  end

  test "should get edit" do
    get edit_tamu_url(@tamu)
    assert_response :success
  end

  test "should update tamu" do
    patch tamu_url(@tamu), params: { tamu: { driver: @tamu.driver, email: @tamu.email, hotel: @tamu.hotel, kodebooking: @tamu.kodebooking, namatamu: @tamu.namatamu, negara: @tamu.negara, note: @tamu.note, paket_id: @tamu.paket_id, published_at: @tamu.published_at, qty: @tamu.qty, telp: @tamu.telp, tglaktifitas: @tamu.tglaktifitas } }
    assert_redirected_to tamu_url(@tamu)
  end

  test "should destroy tamu" do
    assert_difference('Tamu.count', -1) do
      delete tamu_url(@tamu)
    end

    assert_redirected_to tamus_url
  end
end
