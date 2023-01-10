class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    freebie = Freebie.create(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
  end

  def self.oldest_company
    earliest = Company.all.minimum('founding_year')
    Company.find_by(founding_year: earliest)
  end
end
