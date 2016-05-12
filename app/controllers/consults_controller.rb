class ConsultsController < ApplicationController
  def index
      @consults = Consult.all
  end
end
