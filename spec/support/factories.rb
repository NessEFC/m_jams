FactoryGirl.define do
  factory :playlist do
    name        FFaker::Music.genre
    description FFaker::HipsterIpsum.sentence
  end
end
