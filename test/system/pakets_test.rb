require "application_system_test_case"

class PaketsTest < ApplicationSystemTestCase
  setup do
    @paket = pakets(:one)
  end

  test "visiting the index" do
    visit pakets_url
    assert_selector "h1", text: "Pakets"
  end

  test "creating a Paket" do
    visit pakets_url
    click_on "New Paket"

    fill_in "Desk", with: @paket.desk
    fill_in "Exclude", with: @paket.exclude
    fill_in "Harga", with: @paket.harga
    fill_in "Include", with: @paket.include
    fill_in "Jenispaket", with: @paket.jenispaket
    fill_in "Namapaket", with: @paket.namapaket
    fill_in "Supplier", with: @paket.supplier_id
    click_on "Create Paket"

    assert_text "Paket was successfully created"
    click_on "Back"
  end

  test "updating a Paket" do
    visit pakets_url
    click_on "Edit", match: :first

    fill_in "Desk", with: @paket.desk
    fill_in "Exclude", with: @paket.exclude
    fill_in "Harga", with: @paket.harga
    fill_in "Include", with: @paket.include
    fill_in "Jenispaket", with: @paket.jenispaket
    fill_in "Namapaket", with: @paket.namapaket
    fill_in "Supplier", with: @paket.supplier_id
    click_on "Update Paket"

    assert_text "Paket was successfully updated"
    click_on "Back"
  end

  test "destroying a Paket" do
    visit pakets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paket was successfully destroyed"
  end
end
