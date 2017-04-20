class User < ApplicationRecord
  has_secure_password

  belongs_to :role
  has_many :experiments, foreign_key: :author_id

  def clearance_levels
    role.name
  end
end
