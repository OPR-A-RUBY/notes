require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "Notes"
  end

  test "creating a Note" do
    visit notes_url
    click_on "New Note"

    fill_in "Body", with: @note.body
    fill_in "Description", with: @note.description
    fill_in "Label", with: @note.label_id
    fill_in "Level", with: @note.level
    check "Public" if @note.public
    fill_in "Stars", with: @note.stars
    fill_in "Title", with: @note.title
    fill_in "Url", with: @note.url
    fill_in "User", with: @note.user_id
    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "updating a Note" do
    visit notes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @note.body
    fill_in "Description", with: @note.description
    fill_in "Label", with: @note.label_id
    fill_in "Level", with: @note.level
    check "Public" if @note.public
    fill_in "Stars", with: @note.stars
    fill_in "Title", with: @note.title
    fill_in "Url", with: @note.url
    fill_in "User", with: @note.user_id
    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "destroying a Note" do
    visit notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note was successfully destroyed"
  end
end
