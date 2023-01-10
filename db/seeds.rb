puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

golf = Freebie.create(item_name: "Pro Feel Golf", value: 59, company_id: facebook.id, dev_id: meseeks.id)
cats = Freebie.create(item_name: "Cute Cats", value: 24, company_id: dunder.id, dev_id: morty.id)
birds = Freebie.create(item_name: "Angry Birds", value: 79, company_id: google.id, dev_id: rick.id)
bubble = Freebie.create(item_name: "Popping Bubles", value: 39, company_id: google.id, dev_id: rick.id)
builder = Freebie.create(item_name: "Farm Builder", value: 45, company_id: enron.id, dev_id: gazorpazop.id)
box = Freebie.create(item_name: "Falling boxes", value: 64, company_id: facebook.id, dev_id: meseeks.id)

puts "Seeding done!"
