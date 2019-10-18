class FoodplacesController < ApplicationController
  before_action :set_foodplace, only: [:show, :edit, :update, :destroy]

  # GET /foodplaces
  # GET /foodplaces.json
  def index
    @foodplaces = Foodplace.all
  end

  # GET /foodplaces/1
  # GET /foodplaces/1.json
  def show
    @comment = Comment.new
    @food = Food.new
  end

  # GET /foodplaces/new
  def new
    @foodplace = Foodplace.new
  end

  # GET /foodplaces/1/edit
  def edit
  end

  # POST /foodplaces
  # POST /foodplaces.json
  def create
    @foodplace = Foodplace.new(foodplace_params)

    respond_to do |format|
      if @foodplace.save
        format.html { redirect_to @foodplace, notice: 'Foodplace was successfully created.' }
        format.json { render :show, status: :created, location: @foodplace }
      else
        format.html { render :new }
        format.json { render json: @foodplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodplaces/1
  # PATCH/PUT /foodplaces/1.json
  def update
    respond_to do |format|
      if @foodplace.update(foodplace_params)
        format.html { redirect_to @foodplace, notice: 'Foodplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodplace }
      else
        format.html { render :edit }
        format.json { render json: @foodplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodplaces/1
  # DELETE /foodplaces/1.json
  def destroy
    @foodplace.destroy
    respond_to do |format|
      format.html { redirect_to foodplaces_url, notice: 'Foodplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodplace
      @foodplace = Foodplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodplace_params
      params.require(:foodplace).permit(:name, :email, :address, :score, :phone)
    end
end
