require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.list_roles
    binding.pry
    self.characters
  end
end
