class CreateExperimentStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :experiment_staffs do |t|
      t.integer :staff_id
      t.integer :experiment_id

      t.timestamps null: false
    end
  end
end
