class HomeController < ApplicationController
  def index
  end

  def lotto
    if current_user && current_user.admin?
    else
      redirect_to user_session_path
    end
  end

  def create
    @totalnum = params[:totalnum]
    @winnum = params[:winnum]

    @array = (1..@totalnum.to_i).to_a
    @result = @array.sample(@winnum.to_i).sort.to_s
  end
end
