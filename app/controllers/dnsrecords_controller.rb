# vim: sts=2
class DnsrecordsController < ApplicationController
  def new
  end
  
  def index
    foobar = { mike: "adsf", phil: "dfdf" }
    respond_to do |format|
      format.json { render json: foobar }
      format.xml { render xml: foobar }
    end
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
