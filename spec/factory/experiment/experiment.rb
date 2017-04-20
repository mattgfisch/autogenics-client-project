FactoryGirl.define do
  factory :experiment do
    title Faker::Lorem.sentence
    abstract Faker::Lorem.paragraph
    introduction Faker::Lorem.paragraph
    materials Faker::Lorem.paragraph
    results Faker::Lorem.paragraph
    discussion Faker::Lorem.paragraph
    conclusion Faker::Lorem.paragraph
    supporting_info Faker::Lorem.paragraph
    acknowledgments Faker::Lorem.paragraph
    references Faker::Lorem.paragraph
    author_contributions Faker::Lorem.paragraph
    author_id 1
  end
end
