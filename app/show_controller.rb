def highest_rating 
  max = Show.maximum('rating')
  show = Show.find_by(rating: max)
end