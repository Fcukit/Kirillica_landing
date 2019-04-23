class LandingController < ApplicationController
  def index
    if params[:translit].present?
      @mode = params.dig(:translit, :mode) || :iso_9
      @phrase = params.dig(:translit, :phrase)

      @translitted_phrase = Kirillica.translit(@phrase, @mode.to_sym)
      Transliteration.create(input_phrase: @phrase, output_phrase: @translitted_phrase, mode: @mode)
    end
  end
end
