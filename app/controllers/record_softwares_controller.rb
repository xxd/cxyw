class RecordSoftwaresController < ApplicationController
  # GET /record_softwares
  # GET /record_softwares.json
  def index
    @record_softwares = RecordSoftware.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @record_softwares }
    end
  end

  # GET /record_softwares/1
  # GET /record_softwares/1.json
  def show
    @record_software = RecordSoftware.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @record_software }
    end
  end

  # GET /record_softwares/new
  # GET /record_softwares/new.json
  def new
    @record_software = RecordSoftware.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @record_software }
    end
  end

  # GET /record_softwares/1/edit
  def edit
    @record_software = RecordSoftware.find(params[:id])
  end

  # POST /record_softwares
  # POST /record_softwares.json
  def create
    @record_software = RecordSoftware.new(params[:record_software])

    respond_to do |format|
      if @record_software.save
        format.html { redirect_to @record_software, notice: 'Record software was successfully created.' }
        format.json { render json: @record_software, status: :created, location: @record_software }
      else
        format.html { render action: "new" }
        format.json { render json: @record_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /record_softwares/1
  # PUT /record_softwares/1.json
  def update
    @record_software = RecordSoftware.find(params[:id])

    respond_to do |format|
      if @record_software.update_attributes(params[:record_software])
        format.html { redirect_to @record_software, notice: 'Record software was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @record_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_softwares/1
  # DELETE /record_softwares/1.json
  def destroy
    @record_software = RecordSoftware.find(params[:id])
    @record_software.destroy

    respond_to do |format|
      format.html { redirect_to record_softwares_url }
      format.json { head :ok }
    end
  end
end
