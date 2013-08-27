class FUser < ActiveRecord::Base
  attr_accessible :birthday, :education, :hobbies, :name, :rela_status
  has_attached_file :avatar
  attr_accessible :avatar
end
