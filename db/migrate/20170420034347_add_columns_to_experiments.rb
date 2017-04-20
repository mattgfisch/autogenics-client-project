class AddColumnsToExperiments < ActiveRecord::Migration[5.0]
  def change
    add_column :experiments, :abstract, :text
    add_column :experiments, :introduction, :text
    add_column :experiments, :materials, :text
    add_column :experiments, :results, :text
    add_column :experiments, :discussion, :text
    add_column :experiments, :conclusion, :text
    add_column :experiments, :supporting_info, :text
    add_column :experiments, :acknowledgments, :text
    add_column :experiments, :references, :text
    add_column :experiments, :author_contributions, :text
  end
end
