class Item < ApplicationRecord
    has_many :line_items
    has_many :comments, dependent: :destroy
    after_initialize :set_defaults
    

    def set_defaults
        if self.likes.nil?
            self.likes = 0
        end
    end
end

