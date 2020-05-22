require 'pry'

class Project 
attr_accessor :title, :id

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
  end

  def save 
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.first().fetch('id').to_i
  end

  def ==(project_to_compare)
    self.title == project_to_compare.title && self.id == project_to_compare.id
  end
end