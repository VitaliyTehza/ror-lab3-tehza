class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :posts 
         has_many :postcomments

         has_attached_file :avatar, styles: { medium: "300x300>", small: "50x50>" }, default_url: "/images/thumb/default.png"
         validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
