class UserScsController < ApplicationController
  # GET /user_scs
  # GET /user_scs.json
  def index
    @user_scs = UserSc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_scs }
    end
  end

  # GET /user_scs/1
  # GET /user_scs/1.json
  def show
    @user_sc = UserSc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_sc }
    end
  end

  # GET /user_scs/new
  # GET /user_scs/new.json
  def new
    @user_sc = UserSc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_sc }
    end
  end

  # GET /user_scs/1/edit
  def edit
    @user_sc = UserSc.find(params[:id])
  end

  # POST /user_scs
  # POST /user_scs.json
  def create
    @user_sc = UserSc.new(params[:user_sc])

    respond_to do |format|
      if @user_sc.save
        format.html { redirect_to @user_sc, notice: 'User sc was successfully created.' }
        format.json { render json: @user_sc, status: :created, location: @user_sc }
      else
        format.html { render action: "new" }
        format.json { render json: @user_sc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_scs/1
  # PUT /user_scs/1.json
  def update
    @user_sc = UserSc.find(params[:id])

    respond_to do |format|
      if @user_sc.update_attributes(params[:user_sc])
        format.html { redirect_to @user_sc, notice: 'User sc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_sc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_scs/1
  # DELETE /user_scs/1.json
  def destroy
    @user_sc = UserSc.find(params[:id])
    @user_sc.destroy

    respond_to do |format|
      format.html { redirect_to user_scs_url }
      format.json { head :no_content }
    end
  end
end
