class NumberPlatesController < ApplicationController
  # GET /number_plates
  # GET /number_plates.json
  def index
    @number_plates = NumberPlate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @number_plates }
    end
  end

  # GET /number_plates/1
  # GET /number_plates/1.json
  def show
    @number_plate = NumberPlate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @number_plate }
    end
  end

  # GET /number_plates/new
  # GET /number_plates/new.json
  def new
    @number_plate = NumberPlate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @number_plate }
    end
  end

  # GET /number_plates/1/edit
  def edit
    @number_plate = NumberPlate.find(params[:id])
  end

  # POST /number_plates
  # POST /number_plates.json
  def create
    @number_plate = NumberPlate.new(params[:number_plate])

    respond_to do |format|
      if @number_plate.save
        format.html { redirect_to @number_plate, notice: 'Number plate was successfully created.' }
        format.json { render json: @number_plate, status: :created, location: @number_plate }
      else
        format.html { render action: "new" }
        format.json { render json: @number_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /number_plates/1
  # PUT /number_plates/1.json
  def update
    @number_plate = NumberPlate.find(params[:id])

    respond_to do |format|
      if @number_plate.update_attributes(params[:number_plate])
        format.html { redirect_to @number_plate, notice: 'Number plate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @number_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_plates/1
  # DELETE /number_plates/1.json
  def destroy
    @number_plate = NumberPlate.find(params[:id])
    @number_plate.destroy

    respond_to do |format|
      format.html { redirect_to number_plates_url }
      format.json { head :no_content }
    end
  end
end
