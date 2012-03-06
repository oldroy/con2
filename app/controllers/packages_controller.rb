class PackagesController < ApplicationController
  layout "plan"
  before_filter :authenticate_user!
  before_filter :find_plan
  before_filter :find_package, :only => [:show, :edit, :update, :destroy]
  # GET /packages
  # GET /packages.json
  def index
    @packages = @plan.packages

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packages }
    end
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    #probably will build an assembly manager on this page

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @package }
    end
  end

  # GET /packages/new
  # GET /packages/new.json
  def new
    @package = Package.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @package }
    end
  end

  # GET /packages/1/edit
  def edit

  end

  # POST /packages
  # POST /packages.json
  def create
    @package = @plan.packages.build(params[:package])

    respond_to do |format|
      if @package.save
        format.html { redirect_to [@plan, @package], notice: 'Package was successfully created.' }
        format.json { render json: @package, status: :created, location: @package }
      else
        format.html { render action: "new" }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /packages/1
  # PUT /packages/1.json
  def update

    respond_to do |format|
      if @package.update_attributes(params[:package])
        format.html { redirect_to [@plan, @package], notice: 'Package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    @package.destroy

    respond_to do |format|
      format.html { redirect_to packages_url }
      format.json { head :no_content }
    end
  end

  private
      def find_plan
        @plan = Plan.find(params[:plan_id])
      end

      def find_package
        @package = @plan.packages.find(params[:id])
      end
end
