class RinksController < ApplicationController
  before_action :set_rink, only: [:show, :edit, :update, :destroy]
  # GET /rinks
  # GET /rinks.json
  def index
    @rinks = Rink.all
  end

  def search
    zip = params[:zip]
    date = Date.parse(params[:date])
    @rinks = Rink.near(zip , 20)
    @games = @rinks.map do |rink|
      rink.games.map do |game|
        game.game_occurrences
      end
    end
    render json: @games[0][0].includes(:schedulable).select { |occurr| occurr.date > date}.map { |schedule| schedule.as_json.merge({rink_data: schedule.schedulable.rink.as_json}) }
  end

  # GET /rinks/1
  # GET /rinks/1.json
  def show
  end

  # GET /rinks/new
  def new
    @rink = Rink.new
  end

  # GET /rinks/1/edit
  def edit
  end

  # POST /rinks
  # POST /rinks.json
  def create
    @rink = Rink.new(rink_params)

    respond_to do |format|
      if @rink.save
        format.html { redirect_to @rink, notice: 'rink was successfully created.' }
        format.json { render :show, status: :created, location: @rink }
      else
        format.html { render :new }
        format.json { render json: @rink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rinks/1
  # PATCH/PUT /rinks/1.json
  def update
    respond_to do |format|
      if @rink.update(rink_params)
        format.html { redirect_to @rink, notice: 'rink was successfully updated.' }
        format.json { render :show, status: :ok, location: @rink }
      else
        format.html { render :edit }
        format.json { render json: @rink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rinks/1
  # DELETE /rinks/1.json
  def destroy
    @rink.destroy
    respond_to do |format|
      format.html { redirect_to rinks_url, notice: 'rink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rink
      @rink = Rink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rink_params
      params[:rink][:user_id] = current_user.id
      params.require(:rink).permit(:country, :address, :city, :zip, :state_province, :phone)
    end
end
