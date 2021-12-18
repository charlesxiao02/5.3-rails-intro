class Movie < ActiveRecord::Base
  
  def all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings (ratings_list)
    if ratings_list.nil?
      return Movie.all
    else
      return Movie.where("rating = ?", params[:ratings_list])
    end
  end
  
end
