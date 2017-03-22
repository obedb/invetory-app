class InventoriesController < ApplicationController
before_action :authenticate_with_http_digest

  def index
    @inventories = Inventory.all
    
  end

  def create
    @inventory = Inventory.new({
      name: params[:name],
      description: params[:description],
      start: params[:start],
      finish: params[:finish],
      user_id: current_user.id 
      })
    @inventory.save
    flash[:success] = "New Inventory Added"
    redirect_to "/inventories"

    
  end

  def new
    @inventories = Inventory.new
    
  end

  def edit
    @inventory = Inventory.find_by(id: params[:id])
    
  end

  def show
    @inventory = Inventory.find_by(id: params[:id])


    
  end

  def update
    @inventory = Inventory.find_by(id: params[:id])
    @inventory.update({
      name: params[:name],
      description: params[:description],
      start: params[:start],
      finish: params[:finish],
      user_id: current_user.id
      })
    flash[:success] = "Inventory Updated!!"
    redirect_to "/inventories/#{@inventory.id}"
    
  end

  def destroy
    @inventory = Inventory.find_by(id: params[:id])
    @inventory.destroy
    flash[:danger] = "Inventory destroyed!!!"
    redirect_to "/inventories"
  end
end
