class IceCreamsController < ApplicationController
  # GET /ice_creams
  # GET /ice_creams.json
  def index
    @ice_creams = IceCream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ice_creams }
    end
  end

  # GET /ice_creams/1
  # GET /ice_creams/1.json
  def show
    @ice_cream = IceCream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ice_cream }
    end
  end

  # GET /ice_creams/new
  # GET /ice_creams/new.json
  def new
    @ice_cream = IceCream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ice_cream }
    end
  end

  # GET /ice_creams/1/edit
  def edit
    @ice_cream = IceCream.find(params[:id])
  end

  # POST /ice_creams
  # POST /ice_creams.json
  def create

    @ice_cream = IceCream.new(params[:ice_cream])
    @extra = Extra.where("id IN(?)", params[:ice_cream][:extra_ids])
    @ice_cream.extra_ids = @extra.collect(&:id).join(',')
    @ice_cream.status = params[:ice_cream][:status]

    @ice_cream.cone_for_cup_id = params[:ice_cream][:cone_for_cup]
    @ice_cream.flavor_id = params[:ice_cream][:flavor]
    @ice_cream.user_id = current_user.id

    respond_to do |format|
      if @ice_cream.save
        format.html { redirect_to @ice_cream, notice: 'Ice cream was successfully created.' }
        format.json { render json: @ice_cream, status: :created, location: @ice_cream }
      else
        format.html { render action: "new" }
        format.json { render json: @ice_cream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ice_creams/1
  # PUT /ice_creams/1.json
  def update
    @ice_cream = IceCream.find(params[:id])

    respond_to do |format|
      if @ice_cream.update_attributes(params[:ice_cream])
        format.html { redirect_to @ice_cream, notice: 'Ice cream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ice_cream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ice_creams/1
  # DELETE /ice_creams/1.json
  def destroy
    @ice_cream = IceCream.find(params[:id])
    @ice_cream.destroy

    respond_to do |format|
      format.html { redirect_to ice_creams_url }
      format.json { head :no_content }
    end
  end

  def update_cal

     @cone_for_cup = ConeForCup.find(params[:ice_cream][:cone_for_cup])
     @flavor = Flavor.find(params[:ice_cream][:flavor])
     @number = params[:ice_cream][:total_number]
     @extra = Extra.where("id IN(?)", params[:ice_cream][:extra_ids])
     render :partial => 'order_info'
  end

  def confirm
      @ice_cream = IceCream.find(params[:id])
      @ice_cream.status = "completed"
      @ice_cream.save!
  end


end
