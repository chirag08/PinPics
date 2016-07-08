class PinPicsController < ApplicationController
	
	def index
		if params[:tag]
			tag = params[:tag]
			tag_record = Tag.find_by_name(tag)
			if tag_record
				@images = tag_record.images
			end
		elsif params[:id]
			board = Board.find(params[:id])
			@images = board.images
		else
			@images = Image.all.includes(:tag)
		end
	end

	def board_show
		@boards = current_user.boards
	end

end