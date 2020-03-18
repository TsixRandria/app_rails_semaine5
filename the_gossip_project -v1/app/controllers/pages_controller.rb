class PagesController < ApplicationController
  def home
  	@gossip = Gossip.all
  end

  def team

  end

  def contact

  end

  def welcome
  	@name= params[:author].inspect
  end

  def potin
  	@gossip = Gossip.where(author: params[:a])
  	
  end
end
