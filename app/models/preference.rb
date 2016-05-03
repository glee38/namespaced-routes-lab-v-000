class Preference < ActiveRecord::Base

  def self.song_sort_order
    @order
  end

  def self.song_sort_order=(order)
    @order = order
  end
end