class User < ApplicationRecord
  has_secure_password

  belongs_to :role
  has_many :experiments_posted, class_name: "Experiment", foreign_key: :author_id
  has_and_belongs_to_many :experiments_joined, class_name: "Experiment", join_table: "experiments_staff", foreign_key: "staff_id", association_foreign_key: "experiment_id"

  def clearance_levels
    role.name
  end
end