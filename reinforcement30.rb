
require 'httparty'

def generate_passwords

  passwords = HTTParty.get('https:// makemeapassword.org/api/v1/pronouncable/json?c=10&l=16&bmp=T')

  ten_random_passwords = JSON.parse(passwords.body)

	return ten_random_passwords

end

generate_passwords
