class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  
  validates :content, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true

  def last(limit)
    self.all.order(:created_at).limit(limit)
  end

  def create_date
    self.created_at.strftime("%d-%m-%Y")
  end
end
