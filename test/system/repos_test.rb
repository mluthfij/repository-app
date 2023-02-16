require "application_system_test_case"

class ReposTest < ApplicationSystemTestCase
  setup do
    @repo = repos(:one)
  end

  test "visiting the index" do
    visit repos_url
    assert_selector "h1", text: "Repos"
  end

  test "should create repo" do
    visit repos_url
    click_on "New repo"

    fill_in "Name", with: @repo.name
    click_on "Create Repo"

    assert_text "Repo was successfully created"
    click_on "Back"
  end

  test "should update Repo" do
    visit repo_url(@repo)
    click_on "Edit this repo", match: :first

    fill_in "Name", with: @repo.name
    click_on "Update Repo"

    assert_text "Repo was successfully updated"
    click_on "Back"
  end

  test "should destroy Repo" do
    visit repo_url(@repo)
    click_on "Destroy this repo", match: :first

    assert_text "Repo was successfully destroyed"
  end
end
