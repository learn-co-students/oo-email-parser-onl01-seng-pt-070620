# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :emails
  def initialize(email_string)
    @emails = email_string
  end
  
  
  def parse
    email_array = @emails.split(/[,\s]/).delete_if {|w| w.size < 2}

    email_array.uniq
  end
  
end     #ends class