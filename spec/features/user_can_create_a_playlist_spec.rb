require 'rails_helper'

RSpec.feature "User can create a playlist" do
  scenario "and they see the playlist show page" do

    playlist_name = "Crud"
    playlist_description = "Cruddin' it out to all the latest hits."
    playlist_created_at = "April 10, 2017"

    visit root_path
    click_on "Make Some Sweet Jams"
    fill_in "playlist_name", with: playlist_name
    fill_in "playlist_description", with: playlist_description
    click_on "Start Jammin' It Out"

    expect(current_path).to eq(playlist_path(Playlist.last))
    expect(page).to have_content(playlist_name)
    expect(page).to have_content(playlist_description)
    expect(page).to have_content(playlist_created_at)
    expect(page).to have_content("Songs in the Queue: 0")
  end
end
