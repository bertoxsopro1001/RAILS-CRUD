class CrudController < ApplicationController
  def index
    @user = User.all
  end

  def new 
   
  end

  def add 
    @users = User.new(name: params["name"])
    if @users.save
      flash[:success] = "User created successfully!"
      redirect_to new_path
    elsif
      flash[:error] = "Failed to create user"
      render 'new'
    end


  end

  def view
    @users = User.find(params[:id])
  end

end

