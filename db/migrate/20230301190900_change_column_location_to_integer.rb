class ChangeColumnLocationToInteger < ActiveRecord::Migration[7.0]
  def change
    # Change location column from planets table to a string
    change_column :planets, :location, :string
  end
end
