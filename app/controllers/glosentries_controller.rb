class GlosentriesController < ApplicationController
  # GET /glosentries
  # GET /glosentries.xml
  def index
    @glosentries = Glosentry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @glosentries }
    end
  end

  # GET /glosentries/1
  # GET /glosentries/1.xml
  def show
    @glosentry = Glosentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @glosentry }
    end
  end

  # GET /glosentries/new
  # GET /glosentries/new.xml
  def new
    @glosentry = Glosentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @glosentry }
    end
  end

  # GET /glosentries/1/edit
  def edit
    @glosentry = Glosentry.find(params[:id])
  end

  # POST /glosentries
  # POST /glosentries.xml
  def create
    @glosentry = Glosentry.new(params[:glosentry])

    respond_to do |format|
      if @glosentry.save
        format.html { redirect_to(@glosentry, :notice => 'Glosentry was successfully created.') }
        format.xml  { render :xml => @glosentry, :status => :created, :location => @glosentry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @glosentry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /glosentries/1
  # PUT /glosentries/1.xml
  def update
    @glosentry = Glosentry.find(params[:id])

    respond_to do |format|
      if @glosentry.update_attributes(params[:glosentry])
        format.html { redirect_to(@glosentry, :notice => 'Glosentry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @glosentry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /glosentries/1
  # DELETE /glosentries/1.xml
  def destroy
    @glosentry = Glosentry.find(params[:id])
    @glosentry.destroy

    respond_to do |format|
      format.html { redirect_to(glosentries_url) }
      format.xml  { head :ok }
    end
  end
end
