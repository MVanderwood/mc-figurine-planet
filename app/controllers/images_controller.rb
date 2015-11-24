class ImagesController < ApplicationController

  def new
    @figurine = Figurine.find_by(id: params[:id])
    puts @figurine
  end

  def create
    Image.create({
      url: params[:url],
      figurine_id: Figurine.find_by(name: params[:figurine]).id
      })    
    redirect_to "/figurines"
    flash[:success] = "You've successfully added a new image!"
  end

end
