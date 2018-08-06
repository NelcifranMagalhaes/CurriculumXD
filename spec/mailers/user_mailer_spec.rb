require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
	describe "notify" do
	   let(:mail) {UserMailer.email_questions("deidara@gmail.com","deidara sama ggggggggg!!!!!!!!!") }

	   it "renders the headers" do
	     expect(mail.to).to eq(["naltispace@gmail.com"])
	     expect(mail.from).to eq(["deidara@gmail.com"])
	   end

	   it "renders the body" do
	     expect(mail.body.encoded).to match("deidara sama ggggggggg!!!!!!!!!")
	   end
	 end
end
