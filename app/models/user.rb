class User < ApplicationRecord
  has_secure_password

  belongs_to :role
  has_many :experiments_conducted, class_name: "Experiment", foreign_key: :author_id
  has_and_belongs_to_many :experiments

  def clearance_levels
    role.name
  end
end
