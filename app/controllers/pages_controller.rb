class PagesController < ApplicationController
	def home
		 @greeting = "Home action says: Hello world!"
		@tekstas = params[:tekstas]
	end
end
