class ShareItemsController < ApplicationController
  # GET /share_items
  # GET /share_items.json
  def index
    @share_items = ShareItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @share_items }
    end
  end

  # GET /share_items/1
  # GET /share_items/1.json
  def show
    @share_item = ShareItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @share_item }
    end
  end

  # GET /share_items/new
  # GET /share_items/new.json
  def new
    @share_item = ShareItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @share_item }
    end
  end

  # GET /share_items/1/edit
  def edit
    @share_item = ShareItem.find(params[:id])
  end

  # POST /share_items
  # POST /share_items.json
  def create
    @share_item = ShareItem.new(params[:share_item])

    respond_to do |format|
      if @share_item.save
        format.html { redirect_to @share_item, notice: 'Share item was successfully created.' }
        format.json { render json: @share_item, status: :created, location: @share_item }
      else
        format.html { render action: "new" }
        format.json { render json: @share_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /share_items/1
  # PUT /share_items/1.json
  def update
    @share_item = ShareItem.find(params[:id])

    respond_to do |format|
      if @share_item.update_attributes(params[:share_item])
        format.html { redirect_to @share_item, notice: 'Share item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @share_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_items/1
  # DELETE /share_items/1.json
  def destroy
    @share_item = ShareItem.find(params[:id])
    @share_item.destroy

    respond_to do |format|
      format.html { redirect_to share_items_url }
      format.json { head :no_content }
    end
  end
end
