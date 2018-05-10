class ProductPdf<Prawn::Document
	def initialize()
		super
		@product = Product.all
		
		text " name  | Price  | manufacture_date "
		@product.map do |p|
			text "#{p.name} , #{p.price} , #{p.manufacture_date}"
		end

	end

end