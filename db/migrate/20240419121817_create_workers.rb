class CreateWorkers < ActiveRecord::Migration[7.1]
  def change
    create_table :workers do |t|
      t.string :SSnumber
      t.integer :age
      t.string :gender
      t.string :profile_picture

      t.timestamps
    end
  end
end
