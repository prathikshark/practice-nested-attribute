class AddReferenceOfUserToWorker < ActiveRecord::Migration[7.1]
  def change
    add_reference :workers, :user, null: false, foreign_key: true
  end
end
