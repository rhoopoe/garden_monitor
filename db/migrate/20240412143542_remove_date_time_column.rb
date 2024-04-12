class RemoveDateTimeColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :moisture_logs, :datetime, :datetime
  end
end
