class Movie < ActiveRecord::Base
  
  def self.all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings (ratings_list, sort_by)
    if ratings_list.nil?
      Movie.all.order sort_by
    else
      Movie.where(rating: ratings_list).order sort_by
    end
  end
  
end
