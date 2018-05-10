class Product < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	def self.search(search)
  		# Title is for the above case, the OP incorrectly had 'name'
  		where("name LIKE ?", "%#{search}%")
	end
end
