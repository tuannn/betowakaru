class CitiesController < ApplicationController
  
  def new
    
  end
  
  def create
    city = City.new
    city.name = params[:name]
    city.description = params[:description]
    if(city.save)
      flash[:success] = "City information was inserted"
      redirect_to cities_path
    else
      render 'new'
    end
  end
  
  def index
    @cities = City.order(:name).all
  end
  
  def show
    @cities = City.order(:name).all
    @city_id = params[:city_id]
    @city = City.find(@city_id)
    
  end
end
