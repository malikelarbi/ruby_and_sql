# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

apple = Company.where({name: "Apple"}) [0]
puts apple.id
amazon = Company.where({name: "Amazon"}) [0]
tesla = Company.where({name: "Tesla"}) [0]

# 2. create 1-2 new contacts for each company (they can be made up)

values = {first_name: "Andy",last_name: "Jassy",email: "andy@amazon.com",phone_number: "555-555-5555",company_id: amazon.id}
contact = Contact.new(values)
contact.save

values = {first_name: "Craig",last_name: "Federighi",email: "craig@apple.com",phone_number: "666-666-6666",company_id: apple.id}
contact = Contact.new(values)
contact.save

values = {first_name: "Elon",last_name: "Musk",email: "elon@tesla.com",phone_number: "777-777-7777",company_id: tesla.id}
contact = Contact.new(values)
contact.save

values = {first_name: "Tim",last_name: "Cook",email: "tim@apple.com",phone_number: "888-888-8888",company_id: apple.id}
contact = Contact.new(values)
contact.save

# puts Contact.all.count

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
# puts Contact.all.inspect

# ---------------------------------
# Contacts: 4
puts "Contacts: #{Contact.all.count}"
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

