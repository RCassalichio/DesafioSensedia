module Rest
	class Board
		include HTTParty

        #base_uri CONFIG['base_uri']

		def post_board(nameBoard, key, token, defaultLists, backgroundBoard, permissionLevel)
			self.class.post("https://api.trello.com/1/boards/?name=#{nameBoard}&key=#{key}&token=#{token}&defaultLists=#{defaultLists}&prefs_background=#{backgroundBoard}&prefs_permissionLevel=#{permissionLevel}")
		end
	end
end