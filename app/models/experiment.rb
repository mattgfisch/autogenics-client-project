class Experiment < ApplicationRecord
  has_and_belongs_to_many :staff, class_name: "User", join_table: "experiments_staff", association_foreign_key: 'staff_id'
  belongs_to :author, class_name: "User"

  validates_precense_of :title, :staff_size
end
