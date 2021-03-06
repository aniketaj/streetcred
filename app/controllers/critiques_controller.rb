class CritiquesController < ApplicationController
  def index
    #@critiques = Critique.where(:user_id => current_user.id)
    @critiques = current_user.critiques
    @receivedfbs = Critique.where(:receiver_id => current_user.id)
    
  end

  def show
    @critique = Critique.find(params[:id])
  end

  def new
    @critique = Critique.new
    @critique.user_id = params[:user_id]
    @critique.receiver_id = params[:receiver_id]
  end

  def create
    @critique = Critique.new
    @critique.metricfive = params[:metricone].to_i + params[:metrictwo].to_i + params[:metricthree].to_i + params[:metricfour].to_i
    @critique.metricfour = params[:metricfour]
    @critique.metricthree = params[:metricthree]
    @critique.metrictwo = params[:metrictwo]
    @critique.metricone = params[:metricone]
    @critique.description = params[:description]
    @critique.user_id = params[:user_id]
    @critique.name = params[:name]
    @critique.receiver_id = params[:receiver_id]

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

    @critique.metricfive = params[:metricone].to_i + params[:metrictwo].to_i + params[:metricthree].to_i + params[:metricfour].to_i
    @critique.metricfour = params[:metricfour]
    @critique.metricthree = params[:metricthree]
    @critique.metrictwo = params[:metrictwo]
    @critique.metricone = params[:metricone]
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
