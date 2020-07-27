
class EmailAddressParser

  attr_accessor :email
  def  initialize(email)
    @email = email
  end

  def parse
    email_array = @email.split(/[, ]/).uniq
    email_array.reject! {|element| element.empty?}
    email_array
  end

end