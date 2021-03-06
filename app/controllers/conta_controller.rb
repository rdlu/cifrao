class ContaController < ApplicationController
  # GET /conta
  # GET /conta.json
  def index
    @conta = Contum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conta }
    end
  end

  # GET /conta/1
  # GET /conta/1.json
  def show
    @contum = Contum.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contum }
    end
  end

  # GET /conta/new
  # GET /conta/new.json
  def new
    @contum = Contum.new
	  @entidades = Entidade.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contum }
    end
  end

  # GET /conta/1/edit
  def edit
    @contum = Contum.find(params[:id])
	  @entidades = Entidade.all
  end

  # POST /conta
  # POST /conta.json
  def create
    @contum = Contum.new(params[:contum])

    respond_to do |format|
      if @contum.save
        format.html { redirect_to @contum, notice: 'Contum was successfully created.' }
        format.json { render json: @contum, status: :created, location: @contum }
      else
        format.html { render action: "new" }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conta/1
  # PUT /conta/1.json
  def update
    @contum = Contum.find(params[:id])

    respond_to do |format|
      if @contum.update_attributes(params[:contum])
        format.html { redirect_to @contum, notice: 'Contum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1
  # DELETE /conta/1.json
  def destroy
    @contum = Contum.find(params[:id])
    @contum.destroy

    respond_to do |format|
      format.html { redirect_to conta_url }
      format.json { head :no_content }
    end
  end
end
