# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ascio.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ascio.com.rb'

describe Whois::Record::Parser::WhoisAscioCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.ascio.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("ascio.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2005-03-01 14:11:50 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-06-02 00:23:21 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-05-31 00:00:00 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("106")
      expect(subject.registrar.name).to eq("Ascio Technologies, Inc")
      expect(subject.registrar.organization).to eq("Ascio Technologies, Inc")
      expect(subject.registrar.url).to eq("http://www.ascio.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("Hostmaster Ascio")
      expect(subject.registrant_contacts[0].organization).to eq("ASCIO Technologies Inc.")
      expect(subject.registrant_contacts[0].address).to eq("Islands Brygge 55")
      expect(subject.registrant_contacts[0].city).to eq("Copenhagen")
      expect(subject.registrant_contacts[0].zip).to eq("2300")
      expect(subject.registrant_contacts[0].state).to eq("S")
      expect(subject.registrant_contacts[0].country_code).to eq("DK")
      expect(subject.registrant_contacts[0].phone).to eq("")
      expect(subject.registrant_contacts[0].fax).to eq("")
      expect(subject.registrant_contacts[0].email).to eq("")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].name).to eq("Technical Hostmaster")
      expect(subject.admin_contacts[0].organization).to eq("Speednames")
      expect(subject.admin_contacts[0].address).to eq("Rejsbygade 8a")
      expect(subject.admin_contacts[0].city).to eq("Copenhagen")
      expect(subject.admin_contacts[0].zip).to eq("1759")
      expect(subject.admin_contacts[0].state).to eq("DK")
      expect(subject.admin_contacts[0].country_code).to eq("DK")
      expect(subject.admin_contacts[0].phone).to eq("+45.33886300")
      expect(subject.admin_contacts[0].fax).to eq("+45.33886301")
      expect(subject.admin_contacts[0].email).to eq("hostmaster@speednames.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].name).to eq("Netnames Hostmaster")
      expect(subject.technical_contacts[0].organization).to eq("Group NBT")
      expect(subject.technical_contacts[0].address).to eq("3rd Floor Prospero House, 241 Borough High St.")
      expect(subject.technical_contacts[0].city).to eq("London")
      expect(subject.technical_contacts[0].zip).to eq("SE1 1GA")
      expect(subject.technical_contacts[0].state).to eq("")
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.2070159370")
      expect(subject.technical_contacts[0].fax).to eq("+44.2070159375")
      expect(subject.technical_contacts[0].email).to eq("hostmaster@netnames.net")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(4).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.ascio.net")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.ascio.net")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.ascio.net")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.ascio.net")
    end
  end
end
