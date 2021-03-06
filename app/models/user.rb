class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_one_attached :home_image

  # validates :description, presence: true

  validate :max_user_count, on: :create

  def max_user_count
    if User.count === 1
      errors.add(:user, 'Nombre maximum utilisateurs atteint.')
      false
    end
  end
end
