class LandingController < ApplicationController
  def index
  end

  def dashboard
  end

  def ide
    @langs = HTTParty.get('http://api.hackerrank.com/checker/languages.json')
    @names = @langs["languages"]["names"]
    @codes = @langs["languages"]["codes"]


  end

  def evaluate

    permitted = params.permit("source","lang","testcases","api_key","format")
    response = HTTParty.post("http://api.hackerrank.com/checker/submission.json",:body => permitted);
    @val=JSON.parse(response.body)
    # return redirect_to '/solve'
    # byebug

    # render '/solve'
    

  end
end
