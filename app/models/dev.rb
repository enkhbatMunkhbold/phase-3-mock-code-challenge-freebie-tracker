class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.any? { |f| f.item_name == item_name }
  end

  def give_away(dev, freebie)
    if self.freebies.select do |f| 
      if(f.item_name == freebie.item_name)
        freebie.dev = dev
      end
    end
  end
end
