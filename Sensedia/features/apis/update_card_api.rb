module Rest
	class Card
		include HTTParty

        headers 'Accept' => "application/json"
        #base_uri CONFIG['base_uri']

		def put_card(cardColor, idCard, key, token, cardSize, cardBrightness)
			self.class.put("https://api.trello.com/1/cards/#{idCard}?key=#{key}&token=#{token}", :body => {"cover": {"color": "green", "size": "full", "brightness": "dark"}}.to_json)
        end
	end
end
