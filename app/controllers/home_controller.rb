class HomeController < ApplicationController
	def index
	end

	def letsencrypt
      # use your code here, not mine
      render plain: "vfI5cYwsfx50M6SjNE2so0b0kt_nJn_tvTBo2swgZ54.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end

    def letsencryptid
      render plain: "Qu5UJZe30bFUDDygtAXA_J6Ea091gAPp1KC82J5ikIo.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end
end
