class Volunteer
   attr_accessor :name, :id, :project_id
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @project_id = attributes.fetch(:project_id)
  end

  def ==(volunteer_to_compare)
    self.name == volunteer_to_compare.name && self.id == volunteer_to_compare.id
  end

  def self.all 
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    returned_volunteers.each  do |volunteer|
      name = volunteer.fetch("name")
      id = volunteer.fetch("id").to_i
      project_id = volunteer.fetch("project_id").to_i
      volunteers.push(Volunteer.new({name: name, id: id, project_id: project_id}))
    end
    volunteers
  end

  def save
    result = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', '#{@project_id}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  def self.find(id)
    volunteer = DB.exec("SELECT * FROM volunteers WHERE id = #{id};").first
    name = volunteer.fetch("name")
    id = volunteer.fetch("id").to_i
    project_id = volunteer.fetch("project_id").to_i
    Volunteer.new({name: name, id: id, project_id: project_id})
  end

  def update(attributes)
    if attributes.fetch(:name)
      @name = attributes.fetch(:name) 
      DB.exec("UPDATE volunteers SET name = '#{@name}' WHERE id = #{@id};")
    end
  end
end