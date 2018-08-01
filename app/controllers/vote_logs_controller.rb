class VoteLogsController < ApplicationController
  before_action :set_vote_log, only: [:show, :edit, :update, :destroy]

  # GET /vote_logs
  # GET /vote_logs.json
  def index
    @vote_logs = VoteLog.all
  end

  # GET /vote_logs/1
  # GET /vote_logs/1.json
  def show
  end

  # GET /vote_logs/new
  def new
    @vote_log = VoteLog.new
  end

  # GET /vote_logs/1/edit
  def edit
  end

  # POST /vote_logs
  # POST /vote_logs.json
  def create
    @vote_log = VoteLog.new(vote_log_params)

    respond_to do |format|
      if @vote_log.save
        format.html { redirect_to @vote_log, notice: 'Vote log was successfully created.' }
        format.json { render :show, status: :created, location: @vote_log }
      else
        format.html { render :new }
        format.json { render json: @vote_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_logs/1
  # PATCH/PUT /vote_logs/1.json
  def update
    respond_to do |format|
      if @vote_log.update(vote_log_params)
        format.html { redirect_to @vote_log, notice: 'Vote log was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_log }
      else
        format.html { render :edit }
        format.json { render json: @vote_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_logs/1
  # DELETE /vote_logs/1.json
  def destroy
    @vote_log.destroy
    respond_to do |format|
      format.html { redirect_to vote_logs_url, notice: 'Vote log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_log
      @vote_log = VoteLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_log_params
      params.require(:vote_log).permit(:studentID, :name, :image)
    end
end
