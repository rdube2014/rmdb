class RolesController < ApplicationController

  def index
    @roles = Role.page(params[:page]).per(10)
  end

  def show
    @role = Role.find_by(id: params[:id])
  end

  def new
  end

  def create
    @role = Role.new
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    if @role.save
      redirect_to roles_url, notice: "Role created successfully."
    else
      render 'new'
    end
  end

  def edit
    @role = Role.find_by(id: params[:id])
  end

  def update
    @role = Role.find_by(id: params[:id])
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    if @role.save
      redirect_to roles_url, notice: "Role updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @role = Role.find_by(id: params[:id])
    @role.destroy

    redirect_to roles_url, notice: "Role deleted."
  end
end
