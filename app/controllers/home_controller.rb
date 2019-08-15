class HomeController < ApplicationController
	def index
	end

	def letsencrypt
      # use your code here, not mine
      render plain: "vfI5cYwsfx50M6SjNE2so0b0kt_nJn_tvTBo2swgZ54.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end

    def letsencryptid
      render plain: "q-wXb1eSGMK5iZmoECMDv6yrVT2pQa21QG0cpoS7ph4.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end
end
