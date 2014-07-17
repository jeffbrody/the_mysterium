class PiecesController < ApplicationController
	before_filter :get_piece_by_id, only: [ :show,
                                            :edit,
                                            :update,
                                            :destroy]

  def index
  	@pieces = Piece.all
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

private
  def get_piece_by_id
  	@piece = Piece.where(:id => params[:id] ).first

    if !@piece 
      flash[:alert] = "The piece you were looking for could not be found."
      redirect_to pieces_path
  	end
  end

end
