class RakietiesController < ApplicationController
  before_action :set_rakiety, only: [:show, :edit, :update, :destroy]

  # GET /rakieties
  # GET /rakieties.json
  def index
    @rakieties = Rakiety.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /rakieties/1
  # GET /rakieties/1.json
  def show
  end

  # GET /rakieties/new
  def new
    @rakiety = Rakiety.new
  end

  # GET /rakieties/1/edit
  def edit
  end

  # POST /rakieties
  # POST /rakieties.json
  def create
    @rakiety = Rakiety.new(rakiety_params)

    respond_to do |format|
      if @rakiety.save
        format.html { redirect_to @rakiety, notice: 'Rakiety was successfully created.' }
        format.json { render :show, status: :created, location: @rakiety }
      else
        format.html { render :new }
        format.json { render json: @rakiety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rakieties/1
  # PATCH/PUT /rakieties/1.json
  def update
    respond_to do |format|
      if @rakiety.update(rakiety_params)
        format.html { redirect_to @rakiety, notice: 'Rakiety was successfully updated.' }
        format.json { render :show, status: :ok, location: @rakiety }
      else
        format.html { render :edit }
        format.json { render json: @rakiety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rakieties/1
  # DELETE /rakieties/1.json
  def destroy
    @rakiety.destroy
    respond_to do |format|
      format.html { redirect_to rakieties_url, notice: 'Rakiety was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rakiety
      @rakiety = Rakiety.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rakiety_params
      params.require(:rakiety).permit(:marka, :model)
    end
end
