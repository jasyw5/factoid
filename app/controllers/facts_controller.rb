class FactsController < ApplicationController

def index
  @fact = Fact.new
  @fact_display = Fact.order("RANDOM()").first
end

def new
  @fact = Fact.new
end

def create
  Fact.create(fact_params)
  redirect_to root_path
end

private

def fact_params
  params.require(:fact).permit(:fact, :author)
end

end
