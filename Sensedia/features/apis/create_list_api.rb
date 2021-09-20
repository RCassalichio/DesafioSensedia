module Rest
	class List
		include HTTParty

        #base_uri CONFIG['base_uri']

		def post_list(nameList, idBoard, key, token, positionList)
			self.class.post("https://api.trello.com/1/lists?name=#{nameList}&idBoard=#{idBoard}&key=#{key}&token=#{token}&pos=#{positionList}")
		end
	end
end