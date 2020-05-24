class HomeController < ApplicationController

	def bereinigen
		@bereinigen = List.where(:erledigt => true).destroy_all
		redirect_to lists_url, notice: 'Erledigte Aufgaben endgültig gelöscht.'
	end

	def leeren
		@leeren = List.all.destroy_all
		redirect_to lists_url, notice: 'Alle Aufgaben endgültig gelöscht.'
	end	


end
