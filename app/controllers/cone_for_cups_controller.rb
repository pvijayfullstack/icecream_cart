class ConeForCupsController < ApplicationController
  # GET /cone_for_cups
  # GET /cone_for_cups.json
  def index
    @cone_for_cups = ConeForCup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cone_for_cups }
    end
  end

  # GET /cone_for_cups/1
  # GET /cone_for_cups/1.json
  def show
    @cone_for_cup = ConeForCup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cone_for_cup }
    end
  end

  # GET /cone_for_cups/new
  # GET /cone_for_cups/new.json
  def new
    @cone_for_cup = ConeForCup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cone_for_cup }
    end
  end

  # GET /cone_for_cups/1/edit
  def edit
    @cone_for_cup = ConeForCup.find(params[:id])
  end

  # POST /cone_for_cups
  # POST /cone_for_cups.json
  def create
    @cone_for_cup = ConeForCup.new(params[:cone_for_cup])

    respond_to do |format|
      if @cone_for_cup.save
        format.html { redirect_to @cone_for_cup, notice: 'Cone for cup was successfully created.' }
        format.json { render json: @cone_for_cup, status: :created, location: @cone_for_cup }
      else
        format.html { render action: "new" }
        format.json { render json: @cone_for_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cone_for_cups/1
  # PUT /cone_for_cups/1.json
  def update
    @cone_for_cup = ConeForCup.find(params[:id])

    respond_to do |format|
      if @cone_for_cup.update_attributes(params[:cone_for_cup])
        format.html { redirect_to @cone_for_cup, notice: 'Cone for cup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cone_for_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cone_for_cups/1
  # DELETE /cone_for_cups/1.json
  def destroy
    @cone_for_cup = ConeForCup.find(params[:id])
    @cone_for_cup.destroy

    respond_to do |format|
      format.html { redirect_to cone_for_cups_url }
      format.json { head :no_content }
    end
  end
end
