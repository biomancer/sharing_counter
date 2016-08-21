module SharingCounter
  module API
    class Facebook < APIprovider

      DEFAULT_MEASUREMENT = "share_count"

      private

      def request_url
        "http://graph.facebook.com/?id=#{ @sharing_url }"
      end

      def parse(page)
        JSON.parse(page)['share'][@measurement].to_i
      end

    end
  end
end
