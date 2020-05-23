require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')
also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get('/') do
  # DB.exec('DELETE FROM projects *;')
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