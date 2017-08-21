class Post < ActiveRecord::Base
	 belongs_to :user
  has_many :comments,dependent: :destroy

  def commentfeed post_id
     Comment.where(post_id: post_id).order(created_at: :desc)
 end
end
