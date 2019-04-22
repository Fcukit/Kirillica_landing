class LandingController < ApplicationController
  def index
    if params[:translit].present?
      @mode = params.dig(:translit, :mode) || :iso_9
      @phrase = params.dig(:translit, :phrase)
      puts @mode.to_sym
      @translitted_phrase = Kirillica.translit(@phrase, @mode.to_sym)
    end
  end
end
