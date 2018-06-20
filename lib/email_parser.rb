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
    list = emails.split(', ')
    large = list.max_by(&:length)
    list.each do |email|
      if email == large && email.include?(/\s/)
        third = email.split(' ')
        new_list << third
      else
        new_list << email
      end
      return new_list
    end
  end


end






#parser.parse => ["john@doe.com", "person@somewhere.org"]
