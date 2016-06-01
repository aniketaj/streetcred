class UsersController < ApplicationController
  #def index
    #@critiques = Critique.where(:user_id => current_user.id)
  #  @user = current_user.critiques
    def index
      @q = User.ransack(params[:q])
      @users = @q.result(:distinct => true).includes(:firstname, :email)
    end
  #end

  #def show
  #  @user = User.find(params[:id])
  #end

#  def new
#    @critique = Critique.new
#  end

#  def create
  #  @critique = Critique.new
  #  @critique.metricfive = params[:metricone].to_i + params[:metrictwo].to_i + params[:metricthree].to_i + params[:metricfour].to_i
  #  @critique.metricfour = params[:metricfour]
  #  @critique.metricthree = params[:metricthree]
  #  @critique.metrictwo = params[:metrictwo]
  #  @critique.metricone = params[:metricone]
  #  @critique.description = params[:description]
  #  @critique.user_id = params[:user_id]
#
#    if @critique.save
#      redirect_to "/critiques", :notice => "Critique created successfully."
#    else
#      render 'new'
#    end
#  end

#  def edit
#    @critique = Critique.find(params[:id])
#  end

#  def update
  #  @critique = Critique.find(params[:id])
#
  #  @critique.metricfive = params[:metricfive]
  #  @critique.metricfour = params[:metricfour]
  #  @critique.metricthree = params[:metricthree]
  #  @critique.metrictwo = params[:metrictwo]
  #  @critique.metricone = params[:metricone]
  #  @critique.description = params[:description]
  #  @critique.user_id = params[:user_id]
  #  @critique.name = params[:name]

#    if @critique.save
#      redirect_to "/critiques", :notice => "Critique updated successfully."
#    else
#      render 'edit'
#    end
#  end
#
#  def destroy
#    @critique = Critique.find(params[:id])
#
#    @critique.destroy
#
#    redirect_to "/critiques", :notice => "Critique deleted."
#  end
end
