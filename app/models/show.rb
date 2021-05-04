class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum("rating")
    end

    def self.most_popular_show
        hi_rating = self.highest_rating
        self.find_by(rating: hi_rating)
    end

    def self.lowest_rating
        self.minimum("rating")
    end

    def self.least_popular_show
        lo_rating = self.lowest_rating
        self.find_by(rating: lo_rating)
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order("name ASC")
    end
end 