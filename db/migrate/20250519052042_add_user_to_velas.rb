class AddUserToVelas < ActiveRecord::Migration[7.2]
  def change
    add_reference :velas, :user, foreign_key: true
  end
end
