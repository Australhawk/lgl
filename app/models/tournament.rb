class Tournament < ActiveRecord::Base
  attr_accessible :close, :description, :fixture, :image, :name, :open, :start, :url
end
