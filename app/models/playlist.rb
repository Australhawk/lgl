class Playlist < ActiveRecord::Base
  attr_accessible :broadcast, :description, :link, :name
  validates_presence_of :description, :link, :name
  def grooveshark
    dividido = link.split('/')
    nuevo = dividido[-1]
  end
end
