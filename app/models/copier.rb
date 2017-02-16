class Copier < ActiveRecord::Base
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%")
        #where("manufacturer LIKE ?", "%#{search}%")
    end
        
end
