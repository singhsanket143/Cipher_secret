require 'httparty'
class HomeController < ApplicationController
  before_action :authenticate_user!
  include HTTParty
  def index
  end

  	def evaluate

  		permitted = params.permit("source","lang","testcases","api_key","format")
  		response = HTTParty.post("http://api.hackerrank.com/checker/submission.json",:body => permitted);
      @val=JSON.parse(response.body)
      # return redirect_to '/solve'

      # render '/solve'
      # byebug

  	end
end
