class EmailAddressParser
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    attr_accessor :email_addresses

    def parse
        @parsed = @email_addresses.split(' ')
        @parsed.each {|address| address.delete_suffix!(',')}
        @parsed.uniq
    end
end
