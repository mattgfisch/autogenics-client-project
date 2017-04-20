require 'faker'

Role.destroy_all
faculty = Role.create!(name: "Faculty")
staff = Role.create!(name: "Staff")

josh = User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: faculty.id)
austin = User.create!(name: "Austin", email: "email@email.com", password: "password", role_id: staff.id)

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
