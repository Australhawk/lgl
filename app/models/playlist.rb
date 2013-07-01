class Playlist < ActiveRecord::Base
  attr_accessible :broadcast, :description, :link, :name
  
  def grooveshark
    dividido = link.split('/')
    nuevo = dividido[-1]
  end
end
