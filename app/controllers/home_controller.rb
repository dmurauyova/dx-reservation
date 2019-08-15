class HomeController < ApplicationController
	def index
	end

	def letsencrypt
      # use your code here, not mine
      render text: "GkURPAjzOz3FaOOBGiTPqp5coEAcaDdwD2YP9P4ShMU.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end

    def letsencryptid
      render text: "SVb9IPoCQiAqfHmtJUW_VXzQpov3GAkM4ZtqkSlFiHQ.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end
end
