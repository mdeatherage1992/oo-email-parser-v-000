# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :parse,:emails

  def initialize(emails)
    @emails = emails
end

  def parse
    new_list = []
    list = @emails.split(", ")
    binding.pry
    list.each do |email|
      if email.include? ","
        email.delete(",")
        new_list << email
      else
        new_list << email
      end
    end
  end


end






#parser.parse => ["john@doe.com", "person@somewhere.org"]
