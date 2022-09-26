class Dev < ActiveRecord::Base
    belongs_to :company
    has_many :freebies

    #freebies : handled by has_many :freebies

    #companies: NOT CLEAR, but handled by belongs_to :company

    def received_one?(item_name)
        result = self.freebies.find_by(name: item_name)
        if result
            true
        else
            false
        end
    end

    # self refers to the Dev Instance calling this method #give_away
    # if freebie is in self's freebies array, shovel freebie to "dev"-second Dev Instance's array of freebies
    def give_away(dev, freebie)
        if self.freebies.include?(freebie)
            dev.freebies << freebie
        end
    end

end
