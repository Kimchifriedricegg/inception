require_relative "contact.rb"
class CRM

  def initialize()
    @fields = ["first_name", "last_name", "email", "note", "cancel"]
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    system "clear"
    puts "[1] add a new contact"
    puts "[2] modify an existing contact"
    puts "[3] delete a contact"
    puts "[4] display all the contacts"
    puts "[5] search by attribute"
    puts "[6] exit"
    puts "enter a number"
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then abort
    end
  end

  def add_new_contact
    system "clear"
    print "enter first name: "
    first_name = gets.chomp

    print "enter last name: "
    last_name = gets.chomp

    print "email: "
    email = gets.chomp

    print "note: "
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end


  def display_contact contact
    puts "id: #{contact.id} | first name: #{contact.first_name} | last name: #{contact.last_name} | email: #{contact.email} | note: #{contact.note}"
  end

  def display_all_contacts

    system "clear"
    contacts = Contact.all

    contacts.each { |c| display_contact(c) }
    gets
  end

  def select_field
    @fields.each_with_index { |val, index| puts "[#{index+1}] #{val}" }
    puts "enter a number"

    op = 0
    loop do
      op = gets.to_i
      # some code here
      return op if op > 0 && op < 6
      puts "Invalid option"
    end

  end

  def search_by_attribute
    system "clear"
    op = select_field

    if op != 5
      print "enter the term: "
      value = gets.chomp

      contact = Contact.find_by(@fields[op - 1], value)
      if !contact
        puts "Contact not found"
        gets
      else

        display_contact(contact)
        gets
      end
    end
  end

  def modify_existing_contact

    system "clear"

    if Contact.all.count > 0

      puts "id of existing contact required"
      id = gets.to_i

      contact = Contact.find(id)

      if !contact
        puts "Contact not found"
        gets
      else
        op = select_field

        if op != 5
          print "enter #{@fields[op-1].gsub('_', ' ')}: "
          value = gets.chomp

          contact.update(@fields[op-1], value)
        end
      end

    else
      puts "No contact found"
      gets
    end
  end

  def delete_contact

    system "clear"

    if Contact.all.count > 0

      puts "\nid of existing contact required"
      id = gets.to_i

      contact = Contact.find(id)
      if !contact
        puts "Contact not found"
        gets
      else
        contact.delete
      end
    else
      puts "No contact found"
      gets
    end
  end

end

Contact.create("Lorem", "Impsum", "lorem@teste.com", "abc abc")
Contact.create("John", "Impsum A", "lorem_a@teste.com", "abc abc")
Contact.create("Ann", "Impsum B", "lorem_b@teste.com", "abc abc")
Contact.create("Foo", "Impsum C", "lorem_c@teste.com", "abc abc")

a_crm_app = CRM.new
a_crm_app.main_menu
