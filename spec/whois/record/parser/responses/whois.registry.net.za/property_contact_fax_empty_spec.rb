# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.net.za/property_contact_fax_empty.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.net.za.rb'

describe Whois::Record::Parser::WhoisRegistryNetZa, "property_contact_fax_empty.expected" do

  subject do
    file = fixture("responses", "whois.registry.net.za/property_contact_fax_empty.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("FirstRand Bank Limited")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("2nd floor 4 Merchant Place\nCnr Rivonia and Sandton Drive\nSandton\nGauteng\nZA\n2196")
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq("+27.112828000")
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq("domreg.admins@firstrand.co.za")
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
end
