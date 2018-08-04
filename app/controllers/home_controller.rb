class HomeController < ApplicationController
  def index
  end

  def faq
  end

  def quizcard
    $team = Pledge.all.count
  end
end
