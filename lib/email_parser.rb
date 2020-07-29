# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ')
require 'pry'
class EmailAddressParser
  attr_accessor :email_addresses
 def initialize (emails)
   @emails=emails
 end
 def parse
   split_emails=@emails.split(/[\s,]+/)
   remove_duplicate=split_emails.uniq
 end
end