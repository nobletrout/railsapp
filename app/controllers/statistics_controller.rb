# Encoding: ASCII-8BIT
#
# vim: sw=2 sts=2 expandtab
#
class StatisticsController < ApplicationController
  def index
    @domains = DomainLookup.all
    unless params[:domain].nil?
      @overtime_search = DomainLookup.where(["domainname LIKE ?", "%#{params[:domain]}%"])
    end
  end
end
