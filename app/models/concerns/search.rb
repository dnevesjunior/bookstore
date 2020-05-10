module Search
  extend ActiveSupport::Concern

  module ClassMethods
    def search(search_params)
      query = self.where(nil)

      search_params.each do |key, value|
        query = query.public_send("search_by_#{key}", value) if value.present?
      end

      query.distinct
    end
  end
end