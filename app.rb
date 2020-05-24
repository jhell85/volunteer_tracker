require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')
also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get('/') do
  @projects = Project.all
  erb(:projects)
end

get('/projects') do
  redirect to('/')
end

post('/projects') do 
  title = params[:title]
  project = Project.new({title: title, id: nil})
  project.save
  redirect to('/')
end

get('/projects/:id') do 
  @project = Project.find(params[:id].to_i)
  erb(:project_details)
end

get('/projects/:id/edit') do
  @project = Project.find(params[:id].to_i)
  erb(:edit_project)
end

patch('/projects/:id') do 
  project = Project.find(params[:id].to_i)
  project.update({title: params[:title]})
  redirect to('/')
end

delete('/projects/:id') do 
  project = Project.find(params[:id].to_i)
  project.delete
  redirect to('/')
end

post('/projects/:id/volunteers') do
  @project = Project.find(params[:id].to_i)
  volunteer = Volunteer.new({name: params[:name], id: nil, project_id: @project.id})
  volunteer.save
  erb(:project_details)
end

get('/volunteers/:id/edit/project/:project_id') do
  @volunteer = Volunteer.find(params[:id].to_i)
  @project = Project.find(params[:project_id].to_i)
  erb(:volunteer_edit)
end

patch('/volunteers/:id/:project_id') do
  @volunteer = Volunteer.find(params[:id].to_i)
  name = params[:name]
  @volunteer.update({name: name})
  @project = Project.find(params[:project_id].to_i)
  erb(:project_details)
end