class User < ApplicationRecord
    has_secure_password
    after_initialize :set_defaults
    validates :email, presence: true, uniqueness: true
    has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_many :orders, dependent: :destroy
    
    def cart
        cart = self.orders.find_by(paid: false)
        if cart 
            cart
        else
            Order.create(user: self)
        end
    end

    private

    def set_defaults
        self.admin = false if self.admin.nil?
    end
    
end
