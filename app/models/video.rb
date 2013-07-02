class Video < ActiveRecord::Base
  attr_accessible :description, :image, :name, :url
  validates_presence_of :name, :url
  def youtubeid
    dividido = url.split('v=')
    dividido[-1]
  end
end
