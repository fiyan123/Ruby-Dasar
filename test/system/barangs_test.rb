require "application_system_test_case"

class BarangsTest < ApplicationSystemTestCase
  setup do
    @barang = barangs(:one)
  end

  test "visiting the index" do
    visit barangs_url
    assert_selector "h1", text: "Barangs"
  end

  test "should create barang" do
    visit barangs_url
    click_on "New barang"

    fill_in "Bahan", with: @barang.bahan
    fill_in "Jenis", with: @barang.jenis
    fill_in "Nama", with: @barang.nama
    click_on "Create Barang"

    assert_text "Barang was successfully created"
    click_on "Back"
  end

  test "should update Barang" do
    visit barang_url(@barang)
    click_on "Edit this barang", match: :first

    fill_in "Bahan", with: @barang.bahan
    fill_in "Jenis", with: @barang.jenis
    fill_in "Nama", with: @barang.nama
    click_on "Update Barang"

    assert_text "Barang was successfully updated"
    click_on "Back"
  end

  test "should destroy Barang" do
    visit barang_url(@barang)
    click_on "Destroy this barang", match: :first

    assert_text "Barang was successfully destroyed"
  end
end
