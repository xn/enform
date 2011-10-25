class MonkeysController < ApplicationController
  # GET /monkeys
  # GET /monkeys.json
  def index
    @monkeys = Monkey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monkeys }
    end
  end

  # GET /monkeys/1
  # GET /monkeys/1.json
  def show
    @monkey = Monkey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monkey }
    end
  end

  # GET /monkeys/new
  # GET /monkeys/new.json
  def new
    @monkey = Monkey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monkey }
    end
  end

  # GET /monkeys/1/edit
  def edit
    @monkey = Monkey.find(params[:id])
  end

  # POST /monkeys
  # POST /monkeys.json
  def create
    @monkey = Monkey.new(params[:monkey])

    respond_to do |format|
      if @monkey.save
        format.html { redirect_to @monkey, notice: 'Monkey was successfully created.' }
        format.json { render json: @monkey, status: :created, location: @monkey }
      else
        format.html { render action: "new" }
        format.json { render json: @monkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monkeys/1
  # PUT /monkeys/1.json
  def update
    @monkey = Monkey.find(params[:id])

    respond_to do |format|
      if @monkey.update_attributes(params[:monkey])
        format.html { redirect_to @monkey, notice: 'Monkey was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @monkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monkeys/1
  # DELETE /monkeys/1.json
  def destroy
    @monkey = Monkey.find(params[:id])
    @monkey.destroy

    respond_to do |format|
      format.html { redirect_to monkeys_url }
      format.json { head :ok }
    end
  end
end
