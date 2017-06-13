class Picture < ActiveRecord::Base

    def self.newest_first
      Picture.order("created_at DESC")
    end

    def self.most_recent_five
      Picture.newest_first.limit(5)
    end

    def self.created_before(time)
      Picture.where("created_at < ?", time)
    end

    def self.pictures_created_in_year(year)
      start_year = DateTime.new(year)
      end_year = DateTime.new(year).end_of_year
      Picture.where("created_at BETWEEN ? and ?", start_year, end_year)
    end
end

# create a date that starts with 2017/2016 etc...
