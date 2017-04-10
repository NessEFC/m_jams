require 'rails_helper'

RSpec.feature "A user can add a song to a playlist" do
  scenario "from the playlist's show page" do

    playlist = create(:playlist)

    visit playlist_path(playlist)
    click_on "Contribute a Jam"

    expect(current_path).to eq(new_playlist_song_path(playlist))

    fill_in("song[title]", with: "505")
    fill_in("song[artist]", with: "Arctic Monkeys")
    fill_in("song[url]", with: "https://www.youtube.com/watch?v=MrmPDUvKyLs")
    click_on "Jam On"

    song = Song.last

    expect(current_path).to eq(playlist_path(playlist))
    expect(page).to have_content(song.artist)
    expect(page).to have_link(song.title)
  end
end
