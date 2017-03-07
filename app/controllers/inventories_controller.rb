class InventoriesController < ApplicationController
  
  def index
    @inventories = Inventory.all
    
  end

  def create
    @inventory = Inventory.new({
      name: params[:name],
      description: params[:description],
      start: params[:start],
      finish: params[:finish]
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
    @inventory.assign_attributes({
      name: params[:name],
      description: params[:description],
      start: params[:start],
      finish: params[:finish]
      })
    @inventory.save
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
