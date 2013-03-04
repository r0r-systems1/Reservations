class EasTypesController < ApplicationController
  # GET /eas_types
  # GET /eas_types.json
  def index
    @eas_types = EasType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eas_types }
    end
  end

  # GET /eas_types/1
  # GET /eas_types/1.json
  def show
    @eas_type = EasType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eas_type }
    end
  end

  # GET /eas_types/new
  # GET /eas_types/new.json
  def new
    @eas_type = EasType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eas_type }
    end
  end

  # GET /eas_types/1/edit
  def edit
    @eas_type = EasType.find(params[:id])
  end

  # POST /eas_types
  # POST /eas_types.json
  def create
    @eas_type = EasType.new(params[:eas_type])

    respond_to do |format|
      if @eas_type.save
        format.html { redirect_to @eas_type, notice: 'Eas type was successfully created.' }
        format.json { render json: @eas_type, status: :created, location: @eas_type }
      else
        format.html { render action: "new" }
        format.json { render json: @eas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eas_types/1
  # PUT /eas_types/1.json
  def update
    @eas_type = EasType.find(params[:id])

    respond_to do |format|
      if @eas_type.update_attributes(params[:eas_type])
        format.html { redirect_to @eas_type, notice: 'Eas type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eas_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eas_types/1
  # DELETE /eas_types/1.json
  def destroy
    @eas_type = EasType.find(params[:id])
    @eas_type.destroy

    respond_to do |format|
      format.html { redirect_to eas_types_url }
      format.json { head :no_content }
    end
  end
end
