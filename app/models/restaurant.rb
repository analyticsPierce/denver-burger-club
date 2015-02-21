class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  def self.reviewed_restaurants
    _reviewed_restaurants = Restaurant.where( "review_date < current_date" ).order( "review_date desc" )
  end
  
  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end
end
