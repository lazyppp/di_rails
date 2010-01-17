class InformationFragmentsController < ApplicationController

	def search
    @information_fragments = InformationFragment.find( :all, :include => "user", :conditions=>["information_fragments.keywords like ?", "%#{params[:q]}%"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @information_fragments.to_xml({:include => :user})}
    end

	end
  # GET /information_fragments
  # GET /information_fragments.xml
  def index
    @information_fragments = InformationFragment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @information_fragments }
    end
  end

  # GET /information_fragments/1
  # GET /information_fragments/1.xml
  def show
    @information_fragment = InformationFragment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @information_fragment }
    end
  end

  # GET /information_fragments/new
  # GET /information_fragments/new.xml
  def new
    @information_fragment = InformationFragment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @information_fragment }
    end
  end

  # GET /information_fragments/1/edit
  def edit
    @information_fragment = InformationFragment.find(params[:id])
  end

  # POST /information_fragments
  # POST /information_fragments.xml
  def create
    @information_fragment = InformationFragment.new(params[:information_fragment])

    respond_to do |format|
      if @information_fragment.save
        flash[:notice] = 'InformationFragment was successfully created.'
        format.html { redirect_to(@information_fragment) }
        format.xml  { render :xml => @information_fragment, :status => :created, :location => @information_fragment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @information_fragment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /information_fragments/1
  # PUT /information_fragments/1.xml
  def update
    @information_fragment = InformationFragment.find(params[:id])

    respond_to do |format|
      if @information_fragment.update_attributes(params[:information_fragment])
        flash[:notice] = 'InformationFragment was successfully updated.'
        format.html { redirect_to(@information_fragment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @information_fragment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /information_fragments/1
  # DELETE /information_fragments/1.xml
  def destroy
    @information_fragment = InformationFragment.find(params[:id])
    @information_fragment.destroy

    respond_to do |format|
      format.html { redirect_to(information_fragments_url) }
      format.xml  { head :ok }
    end
  end
end
