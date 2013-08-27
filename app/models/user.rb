class User < ActiveRecord::Base
  attr_accessible :brithday, :education, :hobby, :name, :rela_status
  has_attached_file :avatar
end
