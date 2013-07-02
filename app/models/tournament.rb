class Tournament < ActiveRecord::Base
  attr_accessible :close, :description, :fixture, :image, :name, :open, :start, :url
  validates_presence_of :description, :name
end
