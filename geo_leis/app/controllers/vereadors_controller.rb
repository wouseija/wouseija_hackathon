class VereadorsController < ApplicationController
  # GET /vereadors
  # GET /vereadors.json
  def index
    @vereadors = Vereador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vereadors }
    end
  end

  # GET /vereadors/1
  # GET /vereadors/1.json
  def show
    @vereador = Vereador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vereador }
    end
  end

  # GET /vereadors/new
  # GET /vereadors/new.json
  def new
    @vereador = Vereador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vereador }
    end
  end

  # GET /vereadors/1/edit
  def edit
    @vereador = Vereador.find(params[:id])
  end

  # POST /vereadors
  # POST /vereadors.json
  def create
    @vereador = Vereador.new(params[:vereador])

    respond_to do |format|
      if @vereador.save
        format.html { redirect_to @vereador, notice: 'Vereador was successfully created.' }
        format.json { render json: @vereador, status: :created, location: @vereador }
      else
        format.html { render action: "new" }
        format.json { render json: @vereador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vereadors/1
  # PUT /vereadors/1.json
  def update
    @vereador = Vereador.find(params[:id])

    respond_to do |format|
      if @vereador.update_attributes(params[:vereador])
        format.html { redirect_to @vereador, notice: 'Vereador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vereador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vereadors/1
  # DELETE /vereadors/1.json
  def destroy
    @vereador = Vereador.find(params[:id])
    @vereador.destroy

    respond_to do |format|
      format.html { redirect_to vereadors_url }
      format.json { head :no_content }
    end
  end
end
