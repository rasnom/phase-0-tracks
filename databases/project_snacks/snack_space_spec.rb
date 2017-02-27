require_relative 'snack_space'

require 'json'

describe SnackInfo do
	let (:snack_info) {SnackInfo.new}

	it "can pull data from the gov by upc" do
		search_result = snack_info.upc_search("028400072731")
		expect(search_result).to include "FUNYUN"
	end

	it "saves the nbdno after a upc search" do
		search_result = snack_info.upc_search("028400072731")
		expect(snack_info.ndbno).to eq "45154886"
	end



end