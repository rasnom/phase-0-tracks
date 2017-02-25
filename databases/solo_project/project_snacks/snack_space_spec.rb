require_relative 'snack_space'

require 'json'

describe SnackInfo do
	let (:snack_info) {SnackInfo.new}

	it "can pull data from the gov by upc" do
		search_result = snack_info.upc_search("028400072731")
		expect(search_result.body).to include "FUNYUN"
	end

end