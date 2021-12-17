class Movie < ActiveRecord::Base
  
  def all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def ratings_to_show
    return nil
  end
  
end
