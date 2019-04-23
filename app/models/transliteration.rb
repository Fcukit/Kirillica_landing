class Transliteration < ApplicationRecord
  def self.how_much?
    Transliteration.count
  end
end
