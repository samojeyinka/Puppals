FactoryBot.define do
  factory :user do
    email { "sepe@gmail.com" }
    password { "123456" }
    password_confirmation { "123456" }
  end

  trait :logged_in do
    email { "olive@gmail.com" }
    password { "123456" }
  end

  trait :registered do
    after(:create) do |user|
      create(:dog, name: "Puppy", user: user)
    end
  end
end