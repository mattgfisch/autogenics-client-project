Role.destroy_all
Role.create!(name: "Faculty")
Role.create!(name: "Staff")

josh = User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: 1)
austin = User.create!(name: "Austin", email: "email@email.com", password: "password", role_id: 2)

# Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: 1)
# Experiment.create!(title: "Peas and Carrots", content: "Tattoos are cool", author_id: 1)

Experiment.create!( title:
                    content:
                    abstract:
                    introduction:
                    materials:
                    results:
                    discussion:
                    conclusion:
                    supporting_info:
                    acknowledgments:
                    author_contributions:
                    author_id: josh.id)
