class IssuersController < ApplicationController
#  before_filter :authenticate_user!, except: [:show, :index]

  # GET /issuers
  # GET /issuers.json
  def index
    @issuers = Issuer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issuers }
    end
  end

  # GET /issuers/1
  # GET /issuers/1.json
  def show
    @issuer = Issuer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issuer }
    end
  end

  # GET /issuers/new
  # GET /issuers/new.json
  def new
    @issuer = Issuer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issuer }
    end
  end

  # GET /issuers/1/edit
  def edit
    @issuer = Issuer.find(params[:id])
  end

  # POST /issuers
  # POST /issuers.json
  def create
#    redirect_to "home#index" unless user_signed_in?

    @issuer = Issuer.new(params[:issuer])

    respond_to do |format|
      if @issuer.save
        format.html { redirect_to @issuer, notice: 'Issuer was successfully created.' }
        format.json { render json: @issuer, status: :created, location: @issuer }
      else
        format.html { render action: "new" }
        format.json { render json: @issuer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issuers/1
  # PUT /issuers/1.json
  def update
    @issuer = Issuer.find(params[:id])

    respond_to do |format|
      if @issuer.update_attributes(params[:issuer])
        format.html { redirect_to @issuer, notice: 'Issuer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issuer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issuers/1
  # DELETE /issuers/1.json
  def destroy
    @issuer = Issuer.find(params[:id])
    @issuer.destroy

    respond_to do |format|
      format.html { redirect_to issuers_url }
      format.json { head :no_content }
    end
  end
end
