class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :comic

  validates_uniqueness_of :user_id,  scope: [:comic_id ]
end
