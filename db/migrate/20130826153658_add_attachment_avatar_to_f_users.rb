class AddAttachmentAvatarToFUsers < ActiveRecord::Migration
  def self.up
    change_table :f_users do |t|

      t.attachment :avatar

    end
  end

  def self.down

    drop_attached_file :f_users, :avatar

  end
end
