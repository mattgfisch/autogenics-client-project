class Experiment < ApplicationRecord
  has_and_belongs_to_many :staff, class_name: "User", join_table: "experiments_users"
  belongs_to :author, class_name: "User"
end
