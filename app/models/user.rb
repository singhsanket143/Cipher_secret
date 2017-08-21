class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
has_many :posts,dependent: :destroy
has_many :comments,dependent: :destroy
enum role: {guest: 0, member: 1,moderator: 2,admin: 3}
def feed
  	Post.includes(:user).order(created_at: :desc)

end
end

