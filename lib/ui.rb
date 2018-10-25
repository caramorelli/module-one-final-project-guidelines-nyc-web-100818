
class UI
  # AIRPLANE = [
  #   [{ 'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil }, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}],
  #   [{'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}],
  #   [{'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}, {'seat_class' => 'first', 'occupancy_status' => false, 'ad_price' => nil}],
  # ]
  attr_accessor :full_name, :passport_num, :current_person

  def initialize
    puts "Welcome to our travel application"
    sleep 0.90
    @full_name = get_name
    @passport_num = get_passport_info
    @current_person = User.find_by(name: @full_name, passport_id: @passport_num)
    menu

  end

  # available_seat = " ⬜️ "
  # taken_seat = " 🔳 "


  def get_name
    valid = false
    until valid == true
      puts "Please enter your name (as it appears on your passport): "
      full_name = gets.chomp
      if full_name.split(' ').count >= 2 #&& full_name.length >= 5 && full_name.chars.all? { |char| char =~ /[[:alpha:]]/ }
          valid = true
      else
        puts "I'm sorry, your information does not appear to be accurate, please try again."
        sleep 0.80
      end
    end
    full_name
  end

  def get_passport_info
    valid = false
    until valid == true
      puts "Please enter your passport number: "
      passport_num = gets.chomp
      if passport_num.length == 11
        valid = true
      else
        puts "I'm sorry, your information does not appear to be accurate, please try again."
        sleep 0.80
      end
    end
    passport_num
  end

  def menu
    system('clear')
    puts "How can I help you today?\n\n"
    puts "   ✈  Account information\n"

    puts "   ✈  Book flight"
    puts "   ✈  Cancel flight"
    puts "   ✈  Change flight"
    puts "   ✈  View flight information"

    puts "   ✈  Apply for membership\n"

    puts "   ✈  Help options"
    puts "   ✈  Exit"

    puts "\n\nPlease insert one option from the list above: "
    input = gets.chomp.downcase

    case input
    when 'account' || 'account information'
      account_info
    when 'book' || 'book flight'
      book_flight
    when 'cancel' || 'cancel flight'
      cancel_flight
    when 'change' || 'change flight'
      change_flight
    when 'view' || 'view flight information'
      view_flight_info
    when 'apply' || 'apply for membership'
      apply_member
    when 'help' || 'help options'
      help_opts
    when 'exit'
      exit
    else
      print "I'm sorry, please try again."
      sleep 0.90
      menu
    end
  end

  def account_info
    puts self.current_person

  end
  # t.integer  "user_id"
  # t.integer  "flight_id"
  # t.string   "class_status"
  # t.boolean  "round_trip?"
  # t.float    "price"

  def book_flight
    system('clear')
    puts "Please enter your destination (e.g. 'Paris, France'): "
    destination = gets.chomp
    puts "Enter the day, month and year you would like to depart on: "
    puts ""
    # Ticket.create(user_id: self.current_person, flight_id: chosen_flight, )
  end

  def cancel_flight
    system('clear')
    puts 'Please enter your flight number: '
    flight_num = gets.chomp.to_i
    flight = User.flights.find_by(id: flight_num)

  end

  def change_flight
    system('clear')
    puts 'Please enter your flight number: '
    flight_num = gets.chomp.to_i
    flight = self.flights.find_by(id: flight_num)

  end

  def view_flight_info
    puts "Please enter your flight number: "
    flight_num = gets.chomp.to_i
    self.flights.find_by(id: flight_num)

  end

  def flight_num_validation
    puts "Please enter your flight number: "
    num = User.flights.find_by(id: flight_num)
  end

  def apply_member
    cards = ['visa', 'mastercard', 'american xxpress']
    puts "Please enter your credit card information: \n"
    puts "Please type in one of the following: Visa, MasterCard, American Express: "
    cc_name = gets.chomp
    if cards.include?(cc_name.downcase)
      puts "Please type in your credit card number (e.g. MasterCard number: 5412 1234 5678 9876)"
      cc_num = gets.chomp
      if valid_card?(cc_name, cc_num)
        personal = self.find_by(passport_id: self.passport_num)
        personal.membership = true
        puts "Thank you for your purchase. You are now a member!"
      else
        puts "I'm sorry you're card cannot be processed at this time. "
        puts "Press enter to return to the menu or to try a new card enter 'apply'"
        input = gets.chomp
        if input.empty?
          menu
        elsif input == 'apply'
          apply_member
        end
      
      end
    else
      puts "I'm sorry you're card cannot be processed at this time. "
      puts "Press enter to return to the menu or to try a new card enter 'apply'"
      input = gets.chomp
      if input.empty?
        menu
      elsif input == 'apply'
        apply_member
      end
    end
  end

  def valid_card?(cc_name, cc_num)
    card_start = {  'visa' => '4', 'mastercard' => '5', 'american express' => '3' }
    return false unless card_start[cc_name.downcase] == cc_num[0]
    true
  end

  # The first digit in your credit-card number signifies the system: 3 - travel/entertainment cards (such as American Express and Diners Club) 4 - Visa. 5 - MasterCard.
  # The structure of the card number varies by system. For example, American Express card numbers start with 37; Carte Blanche and Diners Club with 38.
  #
  # American Express - Digits three and four are type and currency, digits five through 11 are the account number, digits 12 through 14 are the card number within the account and digit 15 is a check digit.
  # Visa - Digits two through six are the bank number, digits seven through 12 or seven through 15 are the account number and digit 13 or 16 is a check digit.
  # MasterCard - Digits two and three, two through four, two through five or two through six are the bank number (depending on whether digit two is a 1, 2, 3 or other). The digits after the bank number up through digit 15 are the account number, and digit 16 is a check digit.


  def help_opts
    system('clear')
    puts "Contact us if you have questions or issues."
    puts "email: ourapp@some_company.com"
    puts "phone: 1-800-000-0000"
    puts "\nPress the enter key to return to the menu"
    input = gets.chomp
    if input.empty?
      menu
    end
  end

end
