require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address_book')
require('./lib/email')
require('./lib/phone')

get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/new') do
  erb(:contacts_form)
end

post('/contacts') do
  first_name = params.fetch("first_name")
  last_name = params.fetch("last_name")
  birth_year = params.fetch("birth_year")
  contact = Contact.new({:first_name => first_name, :last_name => last_name, :birth_year => birth_year})
  @user_id = contact.user_id()
  contact.save()
  erb(:success)
end

get('/contacts/@user_id') do
  @contact = Contact.find(@user_id)
  erb(:contact)
end
