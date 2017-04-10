require 'rails_helper'

RSpec.describe Playlist do
  context 'validations' do
    it 'is invalid without a name' do
      playlist = Playlist.new(description: "Description goes here.")

      expect(playlist).to_not be_valid
    end

    it 'is invalid without a description' do
      playlist = Playlist.new(name: "Prog")

      expect(playlist).to_not be_valid
    end
  end
end
