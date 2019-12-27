require "application_system_test_case"

class TamusTest < ApplicationSystemTestCase
  setup do
    @tamu = tamus(:one)
  end

  test "visiting the index" do
    visit tamus_url
    assert_selector "h1", text: "Tamus"
  end

  test "creating a Tamu" do
    visit tamus_url
    click_on "New Tamu"

    fill_in "Driver", with: @tamu.driver
    fill_in "Email", with: @tamu.email
    fill_in "Hotel", with: @tamu.hotel
    fill_in "Kodebooking", with: @tamu.kodebooking
    fill_in "Namatamu", with: @tamu.namatamu
    fill_in "Negara", with: @tamu.negara
    fill_in "Note", with: @tamu.note
    fill_in "Paket", with: @tamu.paket_id
    fill_in "Published at", with: @tamu.published_at
    fill_in "Qty", with: @tamu.qty
    fill_in "Telp", with: @tamu.telp
    fill_in "Tglaktifitas", with: @tamu.tglaktifitas
    click_on "Create Tamu"

    assert_text "Tamu was successfully created"
    click_on "Back"
  end

  test "updating a Tamu" do
    visit tamus_url
    click_on "Edit", match: :first

    fill_in "Driver", with: @tamu.driver
    fill_in "Email", with: @tamu.email
    fill_in "Hotel", with: @tamu.hotel
    fill_in "Kodebooking", with: @tamu.kodebooking
    fill_in "Namatamu", with: @tamu.namatamu
    fill_in "Negara", with: @tamu.negara
    fill_in "Note", with: @tamu.note
    fill_in "Paket", with: @tamu.paket_id
    fill_in "Published at", with: @tamu.published_at
    fill_in "Qty", with: @tamu.qty
    fill_in "Telp", with: @tamu.telp
    fill_in "Tglaktifitas", with: @tamu.tglaktifitas
    click_on "Update Tamu"

    assert_text "Tamu was successfully updated"
    click_on "Back"
  end

  test "destroying a Tamu" do
    visit tamus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tamu was successfully destroyed"
  end
end
