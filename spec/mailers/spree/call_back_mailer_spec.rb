require "spec_helper"

describe Spree::CallBackMailer do
  describe "notificate" do
    let(:mail) { Spree::CallBackMailer.notificate }

    it "renders the headers" do
      mail.subject.should eq("Notificate")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
