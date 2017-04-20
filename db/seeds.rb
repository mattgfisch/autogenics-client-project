Role.destroy_all
 faculty = Role.create!(name: "Faculty")
staff = Role.create!(name: "Staff")

User.create!(name: "Josh", email: "email@email.com", password: "password", role_id: faculty.id)
User.create!(name: "Austin", email: "email@email.com", password: "password", role_id: staff.id)

Experiment.create!(title: "Study in Scarlet", content: "Sherlock Holmes", author_id: 1)
Experiment.create!(title: "Peas and Carrots", content: "Tattoos are cool", author_id: 1)
