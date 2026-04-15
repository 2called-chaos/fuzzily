require "delegate"

module Fuzzily
  class String < SimpleDelegator

    def trigrams
      return [] if __getobj__.blank?
      normalized = self.normalize
      number_of_trigrams = normalized.length - 3
      trigrams = (0..number_of_trigrams).map { |index| normalized[index, 3] }.uniq
    end

    def scored_trigrams
      trigrams.map { |t| [t, self.length] }
    end

    protected

    # Remove accents, downcase, replace spaces and word start with "*", return list of normalized words
    def normalize
      I18n.transliterate(to_s)
        .downcase
        .gsub(/[^a-z\d]/, " ")
        .strip
        .gsub(/\s+/, "*")
        .gsub(/^/, "**")
        .gsub(/$/, "*")
    end
  end
end
