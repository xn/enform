class <%= model_name.pluralize %>Controller < ApplicationController
  # GET /<%= klass.table_name %>
  # GET /<%= klass.table_name %>.json
  def index
    @<%= klass.table_name %> = <%= model_name %>.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @<%= klass.table_name %> }
    end
  end

  # GET /<%= klass.table_name %>/1
  # GET /<%= klass.table_name %>/1.json
  def show
    @<%= klass.table_name.singularize %> = <%= model_name %>.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @<%= klass.table_name.singularize %> }
    end
  end

  # GET /<%= klass.table_name %>/new
  # GET /<%= klass.table_name %>/new.json
  def new
    @<%= klass.table_name.singularize %> = <%= model_name %>.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @<%= klass.table_name.singularize %> }
    end
  end

  # GET /<%= klass.table_name %>/1/edit
  def edit
    @<%= klass.table_name.singularize %> = <%= model_name %>.find(params[:id])
  end

  # POST /<%= klass.table_name %>
  # POST /<%= klass.table_name %>.json
  def create
    @<%= klass.table_name.singularize %> = <%= model_name %>.new(params[:<%= klass.table_name.singularize %>])

    respond_to do |format|
      if @<%= klass.table_name.singularize %>.save
        format.html { redirect_to @<%= klass.table_name.singularize %>, notice: '<%= model_name %> was successfully created.' }
        format.json { render json: @<%= klass.table_name.singularize %>, status: :created, location: @<%= klass.table_name.singularize %> }
      else
        format.html { render action: "new" }
        format.json { render json: @<%= klass.table_name.singularize %>.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /<%= klass.table_name %>/1
  # PUT /<%= klass.table_name %>/1.json
  def update
    @<%= klass.table_name.singularize %> = <%= model_name %>.find(params[:id])

    respond_to do |format|
      if @<%= klass.table_name.singularize %>.update_attributes(params[:<%= klass.table_name.singularize %>])
        format.html { redirect_to @<%= klass.table_name.singularize %>, notice: '<%= model_name %> was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @<%= klass.table_name.singularize %>.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /<%= klass.table_name %>/1
  # DELETE /<%= klass.table_name %>/1.json
  def destroy
    @<%= klass.table_name.singularize %> = <%= model_name %>.find(params[:id])
    @<%= klass.table_name.singularize %>.destroy

    respond_to do |format|
      format.html { redirect_to <%= klass.table_name %>_url }
      format.json { head :ok }
    end
  end
end
