class HomeController < ApplicationController
	def index
	end

	def letsencrypt
      # use your code here, not mine
      render text: "HMZpLgJaVjopjttEP1LsaeMcX4WEiBq-7Aj6vmPepJk.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end

    def letsencryptid
      render text: "Qu5UJZe30bFUDDygtAXA_J6Ea091gAPp1KC82J5ikIo.r7yEVXUTgppuPQapG1FrNLORwns35W36Ze-w659l2hg"
    end
end
