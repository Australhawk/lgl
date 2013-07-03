class Modulogd < ActiveRecord::Base
  attr_accessible :match_id, :mostrar
  validates_presence_of :match_id
  validates_uniqueness_of :match_id
end
