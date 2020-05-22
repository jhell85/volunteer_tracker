require 'pry'

class Project 
attr_accessor :title, :id

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
  end
  # def ==(project_to_compare)
  #   self.title == project_to_compare.title && self.id == project_to_compare.id
  # end
end