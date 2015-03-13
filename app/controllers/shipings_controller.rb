class ShipingsController < ApplicationController
  before_action :set_shiping, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /shipings
  # GET /shipings.json
  def index
    @shipings = Shiping.all
  end

  # GET /shipings/1
  # GET /shipings/1.json
  def show
  end

  # GET /shipings/new
  def new
    @shiping = Shiping.new
  end

  # GET /shipings/1/edit
  def edit
  end

  # POST /shipings
  # POST /shipings.json
  def create
    @shiping = Shiping.new(shiping_params)
    @user = current_user

    respond_to do |format|
      if @shiping.save
        format.html { redirect_to @shiping, notice: 'Shiping was successfully created.' }
        format.json { render :show, status: :created, location: @shiping }
      else
        format.html { render :new }
        format.json { render json: @shiping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipings/1
  # PATCH/PUT /shipings/1.json
  def update
    respond_to do |format|
      if @shiping.update(shiping_params)
        format.html { redirect_to @shiping, notice: 'Shiping was successfully updated.' }
        format.json { render :show, status: :ok, location: @shiping }
      else
        format.html { render :edit }
        format.json { render json: @shiping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipings/1
  # DELETE /shipings/1.json
  def destroy
    @shiping.destroy
    respond_to do |format|
      format.html { redirect_to shipings_url, notice: 'Shiping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shiping
      @shiping = Shiping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shiping_params
      params.require(:shiping).permit(:title, :description, :dizhi, :user_id)
    end
end
