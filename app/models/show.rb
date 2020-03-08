class Show < ActiveRecord::Base 
  def self.highest_rating 
  Show.maximum(:rating)
end

def self.most_popular_show
  best = Show.find_by(rating: self.highest_rating)
  best
end 

def self.lowest_rating
  Show.minimum(:rating)
end

def self.least_popular_show
  worst = Show.find_by(rating: self.lowest_rating)
  worst
end 

def self.ratings_sum
  sum = Show.sum(:rating)
end 

def self.popular_shows
  popular = Show.where("rating > ?", 5)
  popular
end 

def self.shows_by_alphabetical_order
  Show.order("name")
end 
end 