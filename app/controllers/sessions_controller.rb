class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
    session[:user_id] = user.id
      redirect_to root_url, :notice => "Entrou no sistema"
    else
      flash.now.alert = "E-mail ou senha incorretos, verifique."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Saiu do sistema. Autentique novamente para ver sua conta."
  end
end
