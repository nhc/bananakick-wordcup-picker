class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @player }
      else
        format.html { render action: 'new' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def custom_update
    @player = Player.find(params[:player][:id])
   
    respond_to do |format|
      if @player.update_attributes(player_params)
        team = @player.team ? @player.team.name : 'BLANK'
        format.html { redirect_to admin_index_path, :notice => "Player <strong>#{@player.name}</strong> assigned team <strong>#{team}</strong>" }
        #format.json { head :no_content }
      else
        format.html { redirect_to admin_index_path, :notice => "Error. Relationship already exists" }
        #format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def custom_update_golden

    @player = Golden.find(params[:golden][:id])
   
    respond_to do |format|
      if @player.update_attributes(golden_params)
        team = @player.team ? @player.team.name : 'BLANK'
        format.html { redirect_to admin_index_path, :message => "<strong>Golden Ball #{params[:golden][:id]}</strong> assigned player / team <strong>#{@player.player.name} / #{team}</strong>" }
        #format.json { head :no_content }
      else
        format.html { redirect_to admin_index_path, :message => "Error. Relationship already exists" }
        #format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.required(:player).permit(:id, :team_id)
    end

     def golden_params
      params.required(:golden).permit(:id, :team_id, :player_id)
    end
end
