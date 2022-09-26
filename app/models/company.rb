class Company < ActiveRecord::Base
    has_many :devs
    has_many :freebies
    has_many :freebies, through: :devs


    #freebies: handled by has_many :freebies

    #devs: handled by has_many :devs

    def give_freebie(dev, item_name, value)

        #ATTEMPT LATER

        # company = self.new

        # dev.company = self
        # dev.freebies << Freebie.create(name: value)

        # developer = self.devs.dev
        # developer.create_freebies(item: value)

        # Freebie.create(item_name: item_name, value: value, dev: dev, company: self)


    end

    def self.oldest_company
        self.minimum(:founding_year)

    end

end
