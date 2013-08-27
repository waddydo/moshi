class CreateStatusPosts < ActiveRecord::Migration
  def change
    create_table :status_posts do |t|
      t.string :message

      t.timestamps
    end
  end
end
