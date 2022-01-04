# frozen_string_literal: true

require 'http'

module HeadlineConnector
  class GenerateTextcloud
    def generate()
      articles = HeadlineConnector::Gateway::Api.new.get_articles.parse
      articles.each do |article|
        HeadlineConnector::Gateway::Api.new.generate_textCloud(article)
      end
    end
  end
end
