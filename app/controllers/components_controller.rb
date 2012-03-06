class ComponentsController < ApplicationController
  layout "plan"
  before_filter :authenticate_user!
  before_filter :find_plan
    before_filter :find_component, :only => [:show, :edit, :update, :destroy]
    # GET /components
    # GET /components.json
    def index
      @components = @plan.components
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @components }
      end
    end
  
    # GET /components/1
    # GET /components/1.json
    def show
      #probably will build an assembly manager on this page
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @component }
      end
    end
  
    # GET /components/new
    # GET /components/new.json
    def new
      @component = Component.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @component }
      end
    end
  
    # GET /components/1/edit
    def edit
  
    end
  
    # POST /components
    # POST /components.json
    def create
      @component = @plan.components.build(params[:component])
  
      respond_to do |format|
        if @component.save
          format.html { redirect_to [@plan, @component], notice: 'component was successfully created.' }
          format.json { render json: @component, status: :created, location: @component }
        else
          format.html { render action: "new" }
          format.json { render json: @component.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /components/1
    # PUT /components/1.json
    def update
  
      respond_to do |format|
        if @component.update_attributes(params[:component])
          format.html { redirect_to [@plan, @component], notice: 'component was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @component.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /components/1
    # DELETE /components/1.json
    def destroy
      @component.destroy
  
      respond_to do |format|
        format.html { redirect_to plan_components_path(@plan) }
        format.json { head :no_content }
      end
    end
  
    private
        def find_plan
          @plan = Plan.find(params[:plan_id])
        end
  
        def find_component
          @component = @plan.components.find(params[:id])
        end
  end
  