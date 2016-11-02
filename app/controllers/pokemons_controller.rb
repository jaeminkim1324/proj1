class PokemonsController < ApplicationController
	attr_accessor :p,
	def capture
		p = Pokemon.find(params[:id])
		p.trainer_id = current_trainer.id
		p.save
		redirect_to '/'
	end

	def damage
		p = Pokemon.find(params[:id])
		p.health = p.health - 10
		if p.health <= 0
			p.destroy
		else 
			p.save
		end
		redirect_to '/trainers/' + params[:tid].to_s
	end

	def new

		@p = Pokemon.new
		render 'new'
	end

	def create
		@p = Pokemon.new(name: params[:pokemon][:name] , level: 1, health: 100)
		@p.trainer_id = current_trainer.id
		if @p.save
			redirect_to '/trainers/' + current_trainer.id.to_s
		else
			@error = true
			redirect_to '/new', :flash => { :error => "Invalid name!" }
		end
	end
end
