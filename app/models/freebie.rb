class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    #dev : handled by belongs_to :dev

    #company : handled by belongs_to :company

    # self.name refers to name of instance of Freebie
    # self.dev.name refers to name of dev who owns instance of Freebie
    # self.dev.company.name :refers to company of dev who owns current instance of Freebie
    def print_details
        "#{self.dev.name} owns a #{self.name} from #{self.dev.company.name}"
    end

end
