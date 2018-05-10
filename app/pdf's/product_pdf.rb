class ProductPdf<Prawn::Document
	def initialize()
		super
		@product = Product.all
		

		#line_items
		@product.map do |p|
			text "#{p.name} , #{p.price} , #{p.manufacture_date}"
		end

	end
=begin
	def line_items
		move_down 20
		 table line_item_rows do
		 	row(0).font_style = :bold
		 	columns(1..3).align= :right
		 end
	end

	def line_item_rows
		
		[["name","price","manufacture date"]] 
		@product.line_items.map do |p|
			 [p.name,p.price,p.manufacture_date] 
		end

	end
=end	
end