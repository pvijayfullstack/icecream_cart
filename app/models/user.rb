class User < ActiveRecord::Base
  attr_accessible  :login, :email, :password, :password_confirmation
  acts_as_authentic

  has_many :ice_creams

end
