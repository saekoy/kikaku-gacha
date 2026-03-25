FactoryBot.define do
  factory :idea do
    title { 'MyString' }
    description { 'MyText' }
    category { 'MyString' }
    difficulty { 1 }
  end
end
