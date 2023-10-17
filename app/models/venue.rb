class Venue < ApplicationRecord
  has_many :shows

  def show_count
    self.shows.count
  end
end