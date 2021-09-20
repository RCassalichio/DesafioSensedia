module Rest
	class Card
		include HTTParty

        #base_uri CONFIG['base_uri']

		def post_card(nameCard, idList, key, token, positionCard)
			self.class.post("https://api.trello.com/1/cards?idList=#{idList}&key=#{key}&token=#{token}&name=#{nameCard}&pos=#{positionCard}")
		end
	end
end