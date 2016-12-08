class CreateDomainLookups < ActiveRecord::Migration[5.0]
  def change
    create_table :domain_lookups do |t|
      t.datetime :lookuptime
      t.string :domainname
      t.string :lookuptype

      t.timestamps
    end
  end
end
