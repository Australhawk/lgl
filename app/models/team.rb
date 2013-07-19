class Team < ActiveRecord::Base
  attr_accessible :url
  validates_presence_of :url
end
