class AddUsersReferenceToUserInformation < ActiveRecord::Migration[7.1]
  def change
    add_reference :user_informations, :user, null: false, foreign_key: true
  end
end
