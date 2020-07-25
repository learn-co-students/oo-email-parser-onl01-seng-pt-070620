# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# class EmailAddressParser
#
#   @@emails = []
#
#   attr_accessor :name, :csv
#
#   def initialize(csv)
#     @csv = csv
#     self.class.all << csv
#   end
#
#   def self.all
#     @@emails
#   end
#
#   def parse
#     self.class.all.map do |email|
#       email.split(", ")
#     end
#     # email = self.all.split(", ")
#     # email
#   end
# end
class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
     emails = @emails.split(/, | /).uniq
     emails
  end
end
