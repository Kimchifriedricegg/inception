class Contact

  attr_reader   :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id       = 1

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  class << self
    def create(first_name, last_name, email, note)
      new_contact = Contact.new(first_name, last_name, email, note)
      @@contacts << new_contact
      return new_contact
    end

    # This method should return all of the existing contacts
    # @return [Object]
    def all
      @@contacts
    end

    # This method should accept an id as an argument
    # and return the contact who has that id
    def find(id)

      @@contacts.each do |r|
        if id == r.id
          return r
        end
      end

      return false
    end

    # This method should work similarly to the find method above
    # but it should allow you to search for a contact using attributes other than id
    # by specifying both the name of the attribute and the value
    # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
    def find_by(attribute, value)
      @@contacts.each do |c|
        if value == c.send(attribute)
          return c
        end
      end

      return false
    end

    def delete_all
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, value)
    self.send("#{attribute}=", value)
  end

  def full_name
    @@contacts.clear
  end

  def delete
    @@contacts.delete_if{ |r| r.id == id }
  end

  # Feel free to add other methods here, if you need them.
end
