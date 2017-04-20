require 'faker'

Role.destroy_all
Role.create!(name: "Faculty")
Role.create!(name: "Staff")

josh = User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: 1)
austin = User.create!(name: "Austin", email: "email@email.com", password: "password", role_id: 2)

# Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: 1)
# Experiment.create!(title: "Peas and Carrots", content: "Tattoos are cool", author_id: 1)

exp = Experiment.create!( title: Faker::Lorem.sentence,
                    abstract: Faker::Lorem.paragraph,
                    introduction: Faker::Lorem.paragraph,
                    materials: Faker::Lorem.paragraph,
                    results: Faker::Lorem.paragraph,
                    discussion: Faker::Lorem.paragraph,
                    conclusion: Faker::Lorem.paragraph,
                    supporting_info: Faker::Lorem.paragraph,
                    acknowledgments: Faker::Lorem.paragraph,
                    references: Faker::Lorem.paragraph,
                    author_contributions: Faker::Lorem.paragraph,
                    author_id: josh.id)
