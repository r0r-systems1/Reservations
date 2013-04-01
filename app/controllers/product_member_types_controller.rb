class ProductMemberTypesController < ApplicationController
  # GET /product_member_types
  # GET /product_member_types.json
  def index
    @product_member_types = ProductMemberType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_member_types }
    end
  end

  # GET /product_member_types/1
  # GET /product_member_types/1.json
  def show
    @product_member_type = ProductMemberType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_member_type }
    end
  end

  # GET /product_member_types/new
  # GET /product_member_types/new.json
  def new
    @product_member_type = ProductMemberType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_member_type }
    end
  end

  # GET /product_member_types/1/edit
  def edit
    @product_member_type = ProductMemberType.find(params[:id])
  end

  # POST /product_member_types
  # POST /product_member_types.json
  def create
    @product_member_type = ProductMemberType.new(params[:product_member_type])

    respond_to do |format|
      if @product_member_type.save
        format.html { redirect_to @product_member_type, notice: 'Product member type was successfully created.' }
        format.json { render json: @product_member_type, status: :created, location: @product_member_type }
      else
        format.html { render action: "new" }
        format.json { render json: @product_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_member_types/1
  # PUT /product_member_types/1.json
  def update
    @product_member_type = ProductMemberType.find(params[:id])

    respond_to do |format|
      if @product_member_type.update_attributes(params[:product_member_type])
        format.html { redirect_to @product_member_type, notice: 'Product member type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_member_types/1
  # DELETE /product_member_types/1.json
  def destroy
    @product_member_type = ProductMemberType.find(params[:id])
    @product_member_type.destroy

    respond_to do |format|
      format.html { redirect_to product_member_types_url }
      format.json { head :no_content }
    end
  end
end
