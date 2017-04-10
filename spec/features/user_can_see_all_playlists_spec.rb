require 'rails_helper'

RSpec.feature "A user can visit the playlist index page" do
  scenario "and click on a playlist to see its songs" do

    # As a User
    # When I viit the playlist index page
    # And I click on an individual playlist
    # Then I should see all the songs associated with the playlist

    playlist_1, playlist_2 = create_list(:playlist, 2)

    visit root_path
    click_on "See what people are Jammin' out to..."

    expect(current_path).to eq(playlists_path)
    expect(page).to have_content(playlist_1.name)
    expect(page).to have_content(playlist_2.name)

    click_on playlist_1.name

    expect(current_path).to eq(playlist_path(playlist_1))
    # expect(page).to have_content(playlist.songs.last.name)
  end
end
