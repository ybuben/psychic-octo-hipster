class DeliverersController < ApplicationController
  # GET /deliverers
  # GET /deliverers.json
  def index
    @deliverers = Deliverer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliverers }
    end
  end

  # GET /deliverers/1
  # GET /deliverers/1.json
  def show
    @deliverer = Deliverer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deliverer }
    end
  end

  # GET /deliverers/new
  # GET /deliverers/new.json
  def new
    @deliverer = Deliverer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deliverer }
    end
  end

  # GET /deliverers/1/edit
  def edit
    @deliverer = Deliverer.find(params[:id])
  end

  # POST /deliverers
  # POST /deliverers.json
  def create
    @deliverer = Deliverer.new(params[:deliverer])

    respond_to do |format|
      if @deliverer.save
        format.html { redirect_to @deliverer, notice: 'Deliverer was successfully created.' }
        format.json { render json: @deliverer, status: :created, location: @deliverer }
      else
        format.html { render action: "new" }
        format.json { render json: @deliverer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deliverers/1
  # PUT /deliverers/1.json
  def update
    @deliverer = Deliverer.find(params[:id])

    respond_to do |format|
      if @deliverer.update_attributes(params[:deliverer])
        format.html { redirect_to @deliverer, notice: 'Deliverer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deliverer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliverers/1
  # DELETE /deliverers/1.json
  def destroy
    @deliverer = Deliverer.find(params[:id])
    @deliverer.destroy

    respond_to do |format|
      format.html { redirect_to deliverers_url }
      format.json { head :no_content }
    end
  end
end
