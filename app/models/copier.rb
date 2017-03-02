class Copier < ActiveRecord::Base
    validates :name, uniqueness: true
    
    # def self.search(search)
    #     result = where("name LIKE ?", "%#{search}%")
    #     if result.empty?
    #         result = where("manufacturer LIKE ?", "%#{search}%")
    #     end
    #     return result
    #     #where("manufacturer LIKE ?", "%#{search}%")
    # end
    
    # def self.test(field)
    #     select(field)
    # end
    
        
end
