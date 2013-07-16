class AppsController < ApplicationController
  # GET /apps
  def index
    @apps = App.all
    if params[:user_id]
      @apps = User.find(params[:user_id]).apps
    else
      @apps = App.all
    end
  end

  # GET /apps/1 |two queries here|
  def show
    # Select * from APPS where id = params[:id]
    @app = App.find(params[:id])

    # Select * from USERS
    @users = User.all
  end

  # PUT /app/:id/buy
  def buy
    # app id
    app = App.find(params[:id])

    # user id
    user = User.find(params[:app][:users])

    # apps have transactions
    app.transactions.create(user: user)

    # Redirecting back to the application with a notice
    redirect_to app, notice: "App purchased by #{user.name}"
  end

end
