class LandingController < ApplicationController
  def index
    if params[:translit].present?
      @mode = params.dig(:translit, :mode)
      @translitted_phrase = Kirillica.translit(params.dig(:translit, :phrase))
    end
  end
end
