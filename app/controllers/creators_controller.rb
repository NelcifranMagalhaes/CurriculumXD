class CreatorsController < ApplicationController
  before_action :set_creator, only: [:show, :edit, :update, :destroy]

  # GET /creators
  # GET /creators.json
  def index
    @creators = Creator.all
  end

  # GET /creators/1
  # GET /creators/1.json
  def show

    respond_to do |format|
       format.html
       format.pdf do
         render pdf: "Curriculun",
         template: "creators/show.pdf.erb",
         layout: 'pdf.html'
       end
      end
  end

  # GET /creators/new
  def new
    @creator = Creator.new
  end

  # GET /creators/1/edit
  def edit
  end

  # POST /creators
  # POST /creators.json
  def create
    @creator = Creator.new(creator_params)

    respond_to do |format|
      if @creator.save
        format.html { redirect_to @creator, notice: 'Creator was successfully created.' }
        format.json { render :show, status: :created, location: @creator }
      else
        format.html { render :new }
        format.json { render json: @creator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creators/1
  # PATCH/PUT /creators/1.json
  def update
    respond_to do |format|
      if @creator.update(creator_params)
        format.html { redirect_to @creator, notice: 'Creator was successfully updated.' }
        format.json { render :show, status: :ok, location: @creator }
      else
        format.html { render :edit }
        format.json { render json: @creator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creators/1
  # DELETE /creators/1.json
  def destroy
    @creator.destroy
    respond_to do |format|
      format.html { redirect_to creators_url, notice: 'Creator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator
      @creator = Creator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creator_params
      params.require(:creator).permit(:name, :birthday, :description, :cpf, :email,
        academies_attributes: [:id, :name, :begin_date,:end_date,:note, :_destroy],
        experiences_attributes: [:id, :name, :begin_date,:end_date,:note,:address, :_destroy],
        languages_attributes: [:id, :name, :level, :_destroy])
    end
end
