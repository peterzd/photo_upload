class ShareItemsController < ApplicationController
  def index
    @share_item = ShareItem.new
    @share_items = ShareItem.all

  end

  def show
    @share_item = ShareItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @share_item }
    end
  end

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

  def destroy
    @share_item = ShareItem.find(params[:id])
    @share_item.destroy

    respond_to do |format|
      format.html { redirect_to share_items_url }
      format.json { head :no_content }
    end
  end

  # upload a file
  def upload
    uploaded_io = params[:share_item][:file]
    uploaded_code = params[:share_item][:extract_code]
    file_name = uploaded_io.original_filename
    si = ShareItem.create file_name: file_name, extract_code: uploaded_code
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
      str = uploaded_io.read
      file.write(str.force_encoding('UTF-8'))
    end
    flash[:notice] = 'add successful'
    redirect_to root_path
  end
end
