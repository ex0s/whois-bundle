# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sgnic.sg/property_nameservers_schema_1_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.sgnic.sg.rb'

describe Whois::Record::Parser::WhoisSgnicSg, "property_nameservers_schema_1_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.sgnic.sg/property_nameservers_schema_1_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(3).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("dnssec1.singnet.com.sg")
      expect(subject.nameservers[0].ipv4).to eq("165.21.83.11")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("dnssec2.singnet.com.sg")
      expect(subject.nameservers[1].ipv4).to eq("195.13.10.226")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("dnssec3.singnet.com.sg")
      expect(subject.nameservers[2].ipv4).to eq("165.21.100.11")
    end
  end
end
