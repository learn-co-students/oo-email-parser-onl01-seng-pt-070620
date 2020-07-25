require 'pry'

# ("avi@test.com, arel@test.com").parse)
# (["avi@test.com", "arel@test.com"])
#     end

#     it "parses space delimited emails" do
#       expect(EmailAddressParser.new("avi@test.com arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#     end

#     it "parses both CSV and space delimited emails" do
#       emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
#       expect(EmailAddressParser.new(emails).parse).to eq(["avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"]) 
#     end

#     it 'parses and removes duplicate emails' do
#       expect(EmailAddressParser.new("avi@test.com, avi@test.com").parse).to eq(["avi@test.com"])
#     end

#split strings to Array
#join array into 1

class EmailAddressParser
  
  attr_accessor :email
  def initialize(string_of_emails)
    @email = string_of_emails
  end  
  
  def parse
    @email = @email.split()
    @email.each do |mail|
      if mail.end_with?(',') #|| @email.end_with?(' ')
        mail[-1] = "" 
        mail = mail.strip
        # binding.pry
      else
        mail = mail.strip
      end 
    end
    return @email.uniq
  end
end
