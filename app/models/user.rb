class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def name = "#{first_name} #{last_name}"
  has_many :tasks, foreign_key: :creator_id
  belongs_to :team
  delegate :name, to: :team, prefix: true, allow_nil: true
end
