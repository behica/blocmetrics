class RegisteredApplicationsController < ApplicationController
  def index
    @apps = RegisteredApplication.all
  end

  def show
    @app = RegisteredApplication.find(params[:id])
  end

  def new
    @app = RegisteredApplication.new
  end

  def create
    @app = RegisteredApplication.new
    @app.name = params[:registered_application][:name]
    @app.url = params[:registered_application][:url]
    @app.user = current_user

    if @app.save
      flash[:notice] = "Application was registered."
      redirect_to @app
    else
      flash.now[:alert] = "There was an error registering your application. Please try again."
      render :new
    end
  end

  def edit
    @app = RegisteredApplication.find(params[:id])
  end

  def update
    @app = RegisteredApplication.find(params[:id])
    @app.name = params[:registered_application][:name]
    @app.url = params[:registered_application][:url]
  end

  def destroy
    @app = RegisteredApplication.find(params[:id])

    if @app.destroy
      flash[:notice] = "#{@app.name} was removed successfully."
      redirect_to registered_applications_path
    else
      flash.now[:alert] = "There was an error removing the app."
      render :show
    end
  end
end
