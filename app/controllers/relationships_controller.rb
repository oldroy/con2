class RelationshipsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_plan
  before_filter :find_assembly

  layout 'plan'
  # GET /relationships
  # GET /relationships.json
  def index
    @relationships = Relationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relationships }
    end
  end

  # GET /relationships/1
  # GET /relationships/1.json
  def show
    @relationship = Relationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relationship }
    end
  end

  # GET /relationships/new
  # GET /relationships/new.json
  def new
    @available_assemblies = @plan.assemblies.available

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relationship }
    end
  end

  # GET /relationships/1/edit
  def edit
    @relationship = Relationship.find(params[:id])
  end

  # POST /relationships
  # POST /relationships.json
  def create
    child = Assembly.find(params[:child_id])
    @relationship = @assembly.relationships.build(child: child)
    child = @relationship.child
    child.used = true
    child.save

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to [@plan, @assembly], notice: 'Relationship was successfully created.' }
        format.json { render json: @relationship, status: :created, location: @relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relationships/1
  # PUT /relationships/1.json
  def update
    @relationship = Relationship.find(params[:id])

    respond_to do |format|
      if @relationship.update_attributes(params[:relationship])
        format.html { redirect_to @relationship, notice: 'Relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationships/1
  # DELETE /relationships/1.json
  def destroy
    @relationship = @assembly.relationships.find(params[:id])
    child = @relationship.child
    child.used = false
    child.save
    @relationship.destroy

    respond_to do |format|
      format.html { redirect_to [@plan, @assembly], notice: 'Relationship was deleted.' }
      format.json { head :no_content }
    end
  end
  
  private
  def find_plan
    @plan = Plan.find(params[:plan_id])
  end
  def find_assembly
    @assembly = @plan.assemblies.find(params[:assembly_id])
  end
end
