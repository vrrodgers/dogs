class DogsController < ApplicationController
  def index 
    @dogs = Dog.all
    if params[:sort] == "descending"
      @dogs = Dog.order(price: :desc)
    elsif params[:sort] == "ascending"
      @dogs = Dog.order(price: :asc)
    end
    if params[:discount]
      @dogs = Dog.where("price < ?", 5)
    end  
    if params[:search]
      @dogs = Dog.where('name LIKE ?', "%" + params[:search] + "%")
    end


  end
  def new
   #Dog.create 
   

  end  
  
  def create 
  dog = Dog.create({:name => params[:name], :price => params[:price], :description=> params[:description], :image => params[:image], :inventory => params[:inventory], :supplier_name => params[:supplier_name]})
    flash[:success] = "dog added!" 
    redirect_to "/dogs/#{dog.id}"
  end  
  
  def show
    #@dog = Dog.find(params[:id])
    if params[:id] == "random"
      dog = Dog.all
      @dog = dog.sample
    else
      @dog = Dog.find_by(id: params[:id])
    end
    
  end  


  def edit
    @dogs = Dog.find(params[:id])
  end
  
  def update
   dog = Dog.find(params[:id])
    dog.update({:name => params[:name], :description => params[:description], :price => params[:price], :image => params[:image], :inventory => params[:inventory], :supplier_name => params[:supplier_name]}) 
    Image.create(dog_id: @dog.id, image_url: params[:image_1])
    Image.create(dog_id: @dog.id, image_url: params[:image_2])
    flash[:sucess] = "product added"
    redirect_to "/dogs/#{dog.id}"
  end
  
  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    flash[:sucess] = "product deleted"
    #redirect_to "/"
  end  
    def search
    search_term = params[:search]
    @dog = Dog.where("name LIKE ?", "%#{search_term}%")
    render :index
  end
end







