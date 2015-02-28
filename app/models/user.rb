class User < ActiveRecord::Base
  require 'date'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_many :products

  validates :firstname, presence: true
  validates :lastname, presence: true

  def create_date
    self.created_at.strftime("%d-%m-%Y")
  end
end
