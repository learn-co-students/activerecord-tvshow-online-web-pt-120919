class Show < ActiveRecord::Base
  
  def self.highest_rating 
    max = Show.maximum('rating')
  end
  
  def self.most_popular_show 
    max = Show.highest_rating 
    show = Show.find_by(rating: max)
  end
  
  def self.lowest_rating 
    min = Show.minimum('rating')
  end
  
  def self.least_popular_show 
    min = Show.lowest_rating 
    show = Show.find_by(rating: min)
  end
  
  def self.ratings_sum
    sum = Show.sum('rating')
  end
  
  def self.popular_shows 
    shows = Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order 
    shows = Show.order('name', :asc)
  end
end