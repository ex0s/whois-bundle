# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domainregistry.ie/property_contacts_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.domainregistry.ie.rb'

describe Whois::Record::Parser::WhoisDomainregistryIe, "property_contacts_multiple.expected" do

  subject do
    file = fixture("responses", "whois.domainregistry.ie/property_contacts_multiple.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(2).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("JL241-IEDR")
      expect(subject.admin_contacts[0].name).to eq("Jonathan Lundberg")
      expect(subject.admin_contacts[1]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[1].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[1].id).to eq("JM474-IEDR")
      expect(subject.admin_contacts[1].name).to eq("John Moylan")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("JM474-IEDR")
      expect(subject.technical_contacts[0].name).to eq("John Moylan")
    end
  end
end
