class FUsersController < ApplicationController
  # GET /f_users
  # GET /f_users.json
  def index
    @f_users = FUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @f_users }
    end
  end

  # GET /f_users/1
  # GET /f_users/1.json
  def show
    @f_user = FUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @f_user }
    end
  end

  # GET /f_users/new
  # GET /f_users/new.json
  def new
    @f_user = FUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @f_user }
    end
  end

  # GET /f_users/1/edit
  def edit
    @f_user = FUser.find(params[:id])
  end

  # POST /f_users
  # POST /f_users.json
  def create
    @f_user = FUser.new(params[:f_user])

    respond_to do |format|
      if @f_user.save
        format.html { redirect_to @f_user, notice: 'F user was successfully created.' }
        format.json { render json: @f_user, status: :created, location: @f_user }
      else
        format.html { render action: "new" }
        format.json { render json: @f_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /f_users/1
  # PUT /f_users/1.json
  def update
    @f_user = FUser.find(params[:id])

    respond_to do |format|
      if @f_user.update_attributes(params[:f_user])
        format.html { redirect_to @f_user, notice: 'F user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @f_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_users/1
  # DELETE /f_users/1.json
  def destroy
    @f_user = FUser.find(params[:id])
    @f_user.destroy

    respond_to do |format|
      format.html { redirect_to f_users_url }
      format.json { head :no_content }
    end
  end
end
