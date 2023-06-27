class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def create
    card = Card.new(term: params[:term], description: params[:description], familiarity: 1)
    card.save
    render json: card
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: {message: "card has been removed"}
  end

  def update
    card = Card.find(params[:id])
    card.term = params[:term] || card.term
    card.description = params[:description] || card.description
    card.familiarity = params[:familiarity] || card.familiarity
    card.save
    render json: card
  end
end
