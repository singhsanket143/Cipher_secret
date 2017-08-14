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
end
