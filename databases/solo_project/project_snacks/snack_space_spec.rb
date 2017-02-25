require_relative 'snack_space'



describe SnackInfo do
	let (:snack_info) {SnackInfo.new}

	it "can pull data from the gov by upc" do
		expect(snack_info.upc_search(028400072731)).to be
	end

end