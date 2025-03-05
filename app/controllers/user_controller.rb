class UserController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end
  def show
    user = User.find_by(id: params[:id])  # Busca por ID
    if user
      render json: user
    else
      render json: { error: "Usuario no encontrado" }, status: 404
    end
  end
end
