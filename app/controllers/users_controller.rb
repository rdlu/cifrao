class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => 'Cadastro efetuado com sucesso'
    else
      render "new"
    end
  end

  def reset_password


  end
end
