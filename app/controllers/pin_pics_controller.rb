class PinPicsController < ApplicationController
	def index
		
		if params[:tag]
			tag = params[:tag]
			tag_record = Tag.find_by_name(tag)
			if tag_record
				@images = tag_record.images
			end
		else
			@images = Image.all.includes(:tag)
		end
	end

end