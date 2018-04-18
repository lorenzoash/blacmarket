class Item < ApplicationRecord
    has_many :line_items, dependent: :destroy
    has_many :comments, dependent: :destroy
    after_initialize :set_defaults
    
    has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def set_defaults
        if self.likes.nil?
            self.likes = 0
        end
    end
    
end

