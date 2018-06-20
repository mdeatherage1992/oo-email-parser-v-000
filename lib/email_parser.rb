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
      if email == large && email.include?(" ")
        third = email.split(' ')
        new_list << third
      elsif !new_list.include? email
        new_list << email
      end
    end
    return new_list.join(' ').split(' ')
  end


end






#parser.parse => ["john@doe.com", "person@somewhere.org"]
