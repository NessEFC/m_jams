require 'rails_helper'

RSpec.feature "A user can visit the playlist index page" do
  scenario "and click on a playlist to see its songs" do

    playlist_1, playlist_2 = create_list(:playlist, 2)
    song = playlist_1.songs.create(artist: "Radiohead", title: "Paranoid Android", url: "www.youtube.com")

    visit root_path
    click_on "See what people are Jammin' out to..."

    expect(current_path).to eq(playlists_path)
    expect(page).to have_content(playlist_1.name)
    expect(page).to have_content(playlist_2.name)

    click_on playlist_1.name

    expect(current_path).to eq(playlist_path(playlist_1))
    expect(page).to have_content(playlist_1.songs.last.artist)
  end
end
