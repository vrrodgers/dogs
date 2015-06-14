class ProductsController < ApplicationController
  def index 
    @dogs = Dog.all

  end
  def new

  end  
  
  def create 
  items = Dog.create({:name => params[:name], :price=> params[:price], :description=> params[:description], :image => params[:image]})
    flash[:success] = "recipe added!"
  end  
  
  def show
    @items = Dog.find(params[:id])
    
  end   

  def edit
    @items = Dog.find(params[:id])
  end
  
  def update
   items = Dog.find(params[:id])
    items.update({:name => params[:name], :description => params[:description], :price => params[:price], :image => params[:image]})
  end
  
  def destroy
   @items = Dog.find(params[:id])
   @items.destroy
  end  
end
