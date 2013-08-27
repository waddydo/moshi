class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :education
      t.string :hobby
      t.string :brithday
      t.string :rela_status

      t.timestamps
    end
  end
end
