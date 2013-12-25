class WelcomeController < ApplicationController
  def index
  	@search_user = SearchUser.new params[:search_user]

  	@users = User.name_is( @search_user.name, current_user.company.id )

  end
end
