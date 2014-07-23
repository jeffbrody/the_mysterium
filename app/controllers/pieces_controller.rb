class PiecesController < ApplicationController
	before_filter :get_piece_by_id, only: [ :show,
                                            :edit,
                                            :update,
                                            :destroy]

  def index
  	@pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def create
    @Piece = Piece.new(piece_params)
    
    if @Piece.save
      flash[:notice] = "Piece #{@Piece.title} has been created."
      redirect_to @Piece
    else
      flash[:alert] = "Piece has not been created."
      render "new"
    end
  end

  def edit
  end

  def update
    @piece.update(piece_params)
    flash[:notice] = "Piece #{@piece.title} has been updated."
    redirect_to @piece
  end

  def destroy
    piece_title=@piece.title
    @piece.destroy
    flash[:notice] = "Piece #{piece_title} has been deleted."
    redirect_to pieces_path
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

  def piece_params
    params.require(:piece).permit(
      :title,
      :published,
      :instrumentation,
      :duration,
      :last_performed,
      :notes)
  end

end
