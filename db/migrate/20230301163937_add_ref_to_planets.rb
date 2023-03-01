class AddRefToPlanets < ActiveRecord::Migration[7.0]
  def change
    remove_column :planets, :user_id, :integer
    add_reference :planets, :user, null: false, foreign_key: true
  end
end
