class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true
  validates :price, :presence => true,
            :format => { :with => /^\d+\.*\d{0,2}$/ ,:multiline => true}


  def average_rating
  	self.reviews.inject(0){ |sum, el| sum + el.rating }.to_f / self.reviews.size
  end
end