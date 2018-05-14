class ProductMailer < ApplicationMailer
	 def product_email(product,user)
	    @product = product
	    @user = user
	    mail(to: @user.email, subject: 'Your product created')
	 end
end
