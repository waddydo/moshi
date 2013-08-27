class CreateFUsers < ActiveRecord::Migration
  def change
    create_table :f_users do |t|
      t.string :name
      t.string :education
      t.string :hobbies
      t.date :birthday
      t.string :rela_status

      t.timestamps
    end
  end
end
