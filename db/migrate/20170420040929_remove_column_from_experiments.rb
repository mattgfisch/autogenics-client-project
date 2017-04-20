class RemoveColumnFromExperiments < ActiveRecord::Migration[5.0]
  def change
    remove_column :experiments, :content
  end
end
