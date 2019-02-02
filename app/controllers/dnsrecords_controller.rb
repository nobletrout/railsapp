# -*- encoding : ASCII-8BIT -*-
# vim: sts=2 sw=2
class DnsrecordsController < ApplicationController
  def index
    respond_to do |format|
      format.any(:xml, :json) { render request.format.to_sym => DomainLookup.all }
    end
  end

  def create
    # to test
    # curl -H "Content-Type:application/json" -d '{"record" : { "domainname" : "chuckiechuckie.com", "lookuptype" : 1337, "lookuptime" : 123123123123 } }' http://cliffhextable.com:3000/dnsrecords
    puts domain_params
    dnsrec = DomainLookup.create(domain_params)
    respond_to do |format|
      format.any(:xml, :json) { render request.format.to_sym => dnsrec }
    end
  end

  def update
  end

  def destroy
  end
  private
  def domain_params
     params.require(:record).permit(:lookuptime, :domainname, :lookuptype)
  end
end
