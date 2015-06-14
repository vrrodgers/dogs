class ImagesController < ApplicationController
  def index 
  end
  def show
     @image = Image.find_by(:dog_id => params[:id])
  end  
end
