class MyDiamondsController < ApplicationController
  before_action :set_my_diamond, only: [:show, :edit, :update, :destroy]

  # GET /my_diamonds
  # GET /my_diamonds.json
  def index
    @my_diamonds = MyDiamond.all
  end

  # GET /my_diamonds/1
  # GET /my_diamonds/1.json
  def show
  end

  # GET /my_diamonds/new
  def new
    @my_diamond = MyDiamond.new
    @templates = Template.all
    gon.template = @templates
  end

  # GET /my_diamonds/1/edit
  def edit
  end

  # POST /my_diamonds
  # POST /my_diamonds.json
  def create
    @my_diamond = MyDiamond.new(my_diamond_params)

    respond_to do |format|
      if @my_diamond.save
        format.html { redirect_to @my_diamond, notice: 'My diamond was successfully created.' }
        format.json { render action: 'show', status: :created, location: @my_diamond }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_diamond.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_diamonds/1
  # PATCH/PUT /my_diamonds/1.json
  def update
    respond_to do |format|
      if @my_diamond.update(my_diamond_params)
        format.html { redirect_to @my_diamond, notice: 'My diamond was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_diamond.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_diamonds/1
  # DELETE /my_diamonds/1.json
  def destroy
    @my_diamond.destroy
    respond_to do |format|
      format.html { redirect_to my_diamonds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_diamond
      @my_diamond = MyDiamond.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_diamond_params
      params.require(:my_diamond).permit(:price, :carat, :shape, :template_id)
    end
end
