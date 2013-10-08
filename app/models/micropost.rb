class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates_presence_of :user_id
  validates :content, presence: true, length: { maximum: 140 }
end
