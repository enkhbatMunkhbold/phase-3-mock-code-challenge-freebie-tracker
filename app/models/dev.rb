class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    found = self.freebies.find_by(item_name: item_name)
    found ? true : false
  end

  def give_away(dev, freebie)
    if self.freebies.select {|f| f.item_name == freebie.item_name}
      freebie.dev = dev
    end
  end
end
