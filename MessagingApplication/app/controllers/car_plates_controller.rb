class CarPlatesController < ApplicationController
  # GET /car_plates
  # GET /car_plates.json
  def index
    @car_plates = CarPlate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_plates }
    end
  end

  # GET /car_plates/1
  # GET /car_plates/1.json
  def show
    @car_plate = CarPlate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_plate }
    end
  end

  # GET /car_plates/new
  # GET /car_plates/new.json
  def new
    @car_plate = CarPlate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_plate }
    end
  end

  # GET /car_plates/1/edit
  def edit
    @car_plate = CarPlate.find(params[:id])
  end

  # POST /car_plates
  # POST /car_plates.json
  def create
    @car_plate = CarPlate.new(params[:car_plate])

    respond_to do |format|
      if @car_plate.save
        format.html { redirect_to @car_plate, notice: 'Car plate was successfully created.' }
        format.json { render json: @car_plate, status: :created, location: @car_plate }
      else
        format.html { render action: "new" }
        format.json { render json: @car_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_plates/1
  # PUT /car_plates/1.json
  def update
    @car_plate = CarPlate.find(params[:id])

    respond_to do |format|
      if @car_plate.update_attributes(params[:car_plate])
        format.html { redirect_to @car_plate, notice: 'Car plate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_plates/1
  # DELETE /car_plates/1.json
  def destroy
    @car_plate = CarPlate.find(params[:id])
    @car_plate.destroy

    respond_to do |format|
      format.html { redirect_to car_plates_url }
      format.json { head :no_content }
    end
  end
end
