FactoryBot.define do
  factory :dog do
    name { "Puppal" }
    breed { "Akita" }
    gender { "Male" }
    size { "Large" }
    age { 5}
    hobby { ["", "Dancing"] }
    bio { "Energetic" }

    association :user, factory: :user

    after(:build) do |dog|
      dog.photo_1.attach(
        io: File.open(Rails.root.join('images.jpg')),
        filename: 'images.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
