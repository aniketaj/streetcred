class CritiquesController < ApplicationController
  def index
    @critiques = Critique.all
  end

  def show
    @critique = Critique.find(params[:id])
  end

  def new
    @critique = Critique.new
  end

  def create
    @critique = Critique.new
    @critique.description = params[:description]
    @critique.user_id = params[:user_id]
    @critique.name = params[:name]

    if @critique.save
      redirect_to "/critiques", :notice => "Critique created successfully."
    else
      render 'new'
    end
  end

  def edit
    @critique = Critique.find(params[:id])
  end

  def update
    @critique = Critique.find(params[:id])

    @critique.description = params[:description]
    @critique.user_id = params[:user_id]
    @critique.name = params[:name]

    if @critique.save
      redirect_to "/critiques", :notice => "Critique updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @critique = Critique.find(params[:id])

    @critique.destroy

    redirect_to "/critiques", :notice => "Critique deleted."
  end
end
