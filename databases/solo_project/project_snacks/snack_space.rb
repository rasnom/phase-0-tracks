require 'httparty' # which likely will need to be installed

# I imagine that this is terrible practice, and if this project is ever 
# revisted then let's figure out a better solution.
HTTParty::Basement.default_options.update(verify: false)

require 'json'


class SnackInfo 

	def initialize
		@api_key = 'cEDbVOlJ2QbGv3aATJoLpVIVkIQDs6W3sTxC5Bbp'
	end

	def upc_search(upc)
		response = HTTParty.get("https://api.nal.usda.gov/ndb/search/" +
			"?format=json&q=028400072731&sort=n&max=25&offset=0" +
			"&api_key=#{@api_key}")
	end

end
