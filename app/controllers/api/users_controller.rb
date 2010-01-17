class Api::UsersController < ApplicationController

	def search
    @users = User.find( :all, :conditions=>["keywords like ?", "%#{params[:q]%"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end

	end

end
