require 'pry'
class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  # GET /guests
  # GET /guests.json
  def index
    @guests = Guest.all
  end

  # GET /guests/1
  # GET /guests/1.json
  def show
  end

  # GET /guests/new
  def new
    @guest = Guest.new
  end

  # GET /guests/1/edit
  def edit
  end

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.where(email: params[:guest][:email]).first_or_initialize
    respond_to do |format|
      if @guest.update(guest_params)
        format.html {}
        format.js { }
        format.json { render json: @guest }
      else
        format.html { render :new }
        format.js {}
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guests/1
  # PATCH/PUT /guests/1.json
  def update
    respond_to do |format|
      if @guest.update(guest_params)
        format.html { redirect_to @guest, notice: 'Guest was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest }
      else
        format.html { render :edit }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guests/1
  # DELETE /guests/1.json
  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_url, notice: 'Guest was successfully deleted.' }
      format.json { head :no_content }
      format.js {}
    end
  end

  def csv_download
    csv_download = request.query_parameters[:download]

    case csv_download 
    when "all-guests" 
      @guests = Guest.all
      filename = "all-guests"
    when "yes-guests" 
      @guests = Guest.where(status: true)
      filename = "rsvp-yes"
    when "unknown-guests" 
      @guests = Guest.where(status: nil)
      filename = "norsvp"
    else
      puts "it was something else"
    end
    respond_to do |format|
      format.csv { send_data @guests.to_csv, filename: "#{filename}-#{Date.today}.csv" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:first_name, :last_name, :email, :status)
    end
end
