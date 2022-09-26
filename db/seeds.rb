Company.destroy_all
puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

Dev.destroy_all
puts "Creating devs..."
first = Dev.create(name: "Rick", company_id: google.id)
second = Dev.create(name: "Morty", company_id: enron.id)
third = Dev.create(name: "Mr. Meseeks", company_id: facebook.id)
fourth = Dev.create(name: "Gazorpazop", company_id: google.id)

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.destroy_all
Freebie.create(name: "pens", dev_id: first.id, company_id: first.company_id)
Freebie.create(name: "chains", dev_id: first.id, company_id: first.company_id)
Freebie.create(name: "bands", dev_id: first.id, company_id: first.company_id)
Freebie.create(name: "pens", dev_id: second.id, company_id: second.company_id)
Freebie.create(name: "chains", dev_id: second.id, company_id: second.company_id)
Freebie.create(name: "pencil", dev_id: second.id, company_id: second.company_id)
Freebie.create(name: "mug", dev_id: second.id, company_id: second.company_id)
Freebie.create(name: "book", dev_id: third.id, company_id: third.company_id)
Freebie.create(name: "mouse_pad", dev_id: third.id, company_id: third.company_id)
Freebie.create(name: "bands", dev_id: fourth.id, company_id: fourth.company_id)



puts "Seeding done!"
