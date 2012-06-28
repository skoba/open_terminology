class CodesetsController < ApplicationController
  # GET /codesets
  # GET /codesets.json
  def index
    @codesets = Codeset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @codesets }
    end
  end

  # GET /codesets/1
  # GET /codesets/1.json
  def show
    @codeset = Codeset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @codeset }
    end
  end

  # GET /codesets/new
  # GET /codesets/new.json
  def new
    @codeset = Codeset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @codeset }
    end
  end

  # GET /codesets/1/edit
  def edit
    @codeset = Codeset.find(params[:id])
  end

  # POST /codesets
  # POST /codesets.json
  def create
    @codeset = Codeset.new(params[:codeset])

    respond_to do |format|
      if @codeset.save
        format.html { redirect_to @codeset, notice: 'Codeset was successfully created.' }
        format.json { render json: @codeset, status: :created, location: @codeset }
      else
        format.html { render action: "new" }
        format.json { render json: @codeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /codesets/1
  # PUT /codesets/1.json
  def update
    @codeset = Codeset.find(params[:id])

    respond_to do |format|
      if @codeset.update_attributes(params[:codeset])
        format.html { redirect_to @codeset, notice: 'Codeset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @codeset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codesets/1
  # DELETE /codesets/1.json
  def destroy
    @codeset = Codeset.find(params[:id])
    @codeset.destroy

    respond_to do |format|
      format.html { redirect_to codesets_url }
      format.json { head :no_content }
    end
  end
end
