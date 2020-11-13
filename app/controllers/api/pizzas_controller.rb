class Api::PizzasController < ApplicationController
  
  def index
    @pizzas = Pizza.all
    render 'index.json.jb'
  end

  def show
    @pizza = Pizza.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @pizza = Pizza.new(style: params[:style],
    size: params[:size],
    topping: params[:topping],
    price: params[:price])
    @pizza.save
    render 'show.json.jb'
  end

  def update
    @pizza = Pizza.find_by(id: params[:id])
    @pizza.style = params[:style]
    @pizza.size = params[:size]
    @pizza.topping = params[:topping]
    @pizza.price = params[:price]
    @pizza.save
    render 'show.json.jb'
  end

  def delete
    @pizza = Pizza.find_by(id: params[:id])
    @pizza.destroy
    render json: {message: "Pizza deleted, how could you?"}
  end

end
