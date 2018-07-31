class LottosController < ApplicationController
  before_action :set_lotto, only: [:show, :edit, :update, :destroy]

  # GET /lottos
  # GET /lottos.json
  def index
    @lottos = Lotto.all
    if current_user && current_user.admin?
      Lotto.all
    else
      redirect_to user_session_path
    end
    
  end

  # GET /lottos/1
  # GET /lottos/1.json
  def show
    @totalnum = params[:totalnum]
    @winnum = params[:winnum]

    @array = (1..@totalnum.to_i).to_a
    @result = @array.sample(@winnum.to_i).sort.to_s
  end

  # GET /lottos/new
  def new
    @lotto = Lotto.new
  end

  # GET /lottos/1/edit
  def edit
  end

  # POST /lottos
  # POST /lottos.json
  def create
    @lotto = Lotto.new(lotto_params)

    respond_to do |format|
      if @lotto.save
        format.html { redirect_to @lotto, notice: 'Lotto was successfully created.' }
        format.json { render :show, status: :created, location: @lotto }
      else
        format.html { render :new }
        format.json { render json: @lotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lottos/1
  # PATCH/PUT /lottos/1.json
  def update
    respond_to do |format|
      if @lotto.update(lotto_params)
        format.html { redirect_to @lotto, notice: 'Lotto was successfully updated.' }
        format.json { render :show, status: :ok, location: @lotto }
      else
        format.html { render :edit }
        format.json { render json: @lotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lottos/1
  # DELETE /lottos/1.json
  def destroy
    @lotto.destroy
    respond_to do |format|
      format.html { redirect_to lottos_url, notice: 'Lotto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lotto
      @lotto = Lotto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lotto_params
      params.require(:lotto).permit(:totalnum, :winnum, :result)
    end
end
