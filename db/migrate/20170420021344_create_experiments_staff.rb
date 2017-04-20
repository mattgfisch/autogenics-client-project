class CreateExperimentsStaff < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments_staff do |t|
      t.integer :staff_id
      t.integer :experiment_id
    end
  end
end
