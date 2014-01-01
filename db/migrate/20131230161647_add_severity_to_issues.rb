class AddSeverityToIssues < ActiveRecord::Migration
  def up
    add_column :issues, :severity, :string, null:false
  end

  def down
    remove_column :issues, :severity
  end
end
