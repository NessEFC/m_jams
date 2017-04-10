FactoryGirl.define do
  factory :playlist do
    sequence :name do |n|
      FFaker::Music.genre + "#{n}"
    end
    sequence :description do |n|
      FFaker::HipsterIpsum.sentence + "#{n}"
    end
  end
end
