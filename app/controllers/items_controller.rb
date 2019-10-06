class ItemsController < ApplicationController
  before_action :set_item, only: [ :edit, :update,:show, :destroy]
  before_action :require_user, except: [:index, :show]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
     if @item.save
      flash[:success] = "Deal was successfully created"
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
     @item = Item.find(params[:id])
     if @item.update(item_params)
       flash[:success] = "Deal was successfully updated"
      redirect_to item_path(@item)
    else
      render 'edit'
    end
    
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
     @item = Item.find(params[:id])
     @item.destroy
     flash[:danger] = "Deal was successfully deleted"
     redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :price, :discount_price, :quantity)
    end
    
    
    # def require_same_user
    #   if current_user != current_user.admin?
    #     flash[:danger] = "You cannot perform this action"
    #     redirect_to root_path
    #   end
    # end
end
