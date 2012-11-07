class EntidadesController < ApplicationController
  # GET /entidades
  # GET /entidades.json
  def index
    @entidades = Entidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entidades }
    end
  end

  # GET /entidades/1
  # GET /entidades/1.json
  def show
    @entidade = Entidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entidade }
    end
  end

  # GET /entidades/new
  # GET /entidades/new.json
  def new
    @entidade = Entidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entidade }
    end
  end

  # GET /entidades/1/edit
  def edit
    @entidade = Entidade.find(params[:id])
  end

  # POST /entidades
  # POST /entidades.json
  def create
    @entidade = Entidade.new(params[:entidade])

    respond_to do |format|
      if @entidade.save
        format.html { redirect_to @entidade, notice: 'Entidade was successfully created.' }
        format.json { render json: @entidade, status: :created, location: @entidade }
      else
        format.html { render action: "new" }
        format.json { render json: @entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entidades/1
  # PUT /entidades/1.json
  def update
    @entidade = Entidade.find(params[:id])

    respond_to do |format|
      if @entidade.update_attributes(params[:entidade])
        format.html { redirect_to @entidade, notice: 'Entidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entidades/1
  # DELETE /entidades/1.json
  def destroy
    @entidade = Entidade.find(params[:id])
    @entidade.destroy

    respond_to do |format|
      format.html { redirect_to entidades_url }
      format.json { head :no_content }
    end
  end
end
