module Rest
	class Board
		include HTTParty

        headers 'Accept' => "application/json"
        base_uri CONFIG['base_uri']

		def get_board(key, token)
			self.class.get("https://api.trello.com/1/members/me/boards?fields=name,url&key=#{key}&token=#{token}")
		end
	end
end