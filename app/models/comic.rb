class Comic < ActiveRecord::Base
  has_many :favorites
  has_many :users
end
