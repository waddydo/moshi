class CreateUserScs < ActiveRecord::Migration
  def change
    create_table :user_scs do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
