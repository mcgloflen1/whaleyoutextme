class Subscriber < ActiveRecord::Base
    
    belongs_to :post, :counter_cache => true
    
    validates :phone, 
        presence: true, 
        length: { :in => 10..11, :too_long => "That is not a valid phone number length!" }, 
        numericality: true

    def send_message_intro(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: "You have been subscribed to " + text + "!"
        )
    end
    
    def send_message(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_two(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end

    def send_message_three(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end

    def send_message_four(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_five(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_six(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_seven(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_eight(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_nine(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_ten(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_eleven(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twelve(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_thirteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_fourteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_fifteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_sixteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_seventeen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_eighteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_nineteen(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twenty(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentyone(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentytwo(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentythree(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentyfour(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentyfive(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentysix(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentyseven(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentyeight(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_twentynine(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end
    
    def send_message_thirty(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_FROM,
            to: self.phone,
            body: text
        )
    end

    handle_asynchronously :send_message_intro, :run_at => Proc.new { 1.minutes.from_now }
    handle_asynchronously :send_message, :run_at => Proc.new { 1440.minutes.from_now }
    handle_asynchronously :send_message_two, :run_at => Proc.new { 2880.minutes.from_now }
    handle_asynchronously :send_message_three, :run_at => Proc.new { 4320.minutes.from_now }
    handle_asynchronously :send_message_four, :run_at => Proc.new { 5760.minutes.from_now }
    handle_asynchronously :send_message_five, :run_at => Proc.new { 7200.minutes.from_now }
    handle_asynchronously :send_message_six, :run_at => Proc.new { 8640.minutes.from_now }
    handle_asynchronously :send_message_seven, :run_at => Proc.new { 10080.minutes.from_now }
    handle_asynchronously :send_message_eight, :run_at => Proc.new { 11520.minutes.from_now }
    handle_asynchronously :send_message_nine, :run_at => Proc.new { 12960.minutes.from_now }
    handle_asynchronously :send_message_ten, :run_at => Proc.new { 14400.minutes.from_now }
    handle_asynchronously :send_message_eleven, :run_at => Proc.new { 15840.minutes.from_now }
    handle_asynchronously :send_message_twelve, :run_at => Proc.new { 17280.minutes.from_now }
    handle_asynchronously :send_message_thirteen, :run_at => Proc.new { 18720.minutes.from_now }
    handle_asynchronously :send_message_fourteen, :run_at => Proc.new { 20160.minutes.from_now }
    handle_asynchronously :send_message_fifteen, :run_at => Proc.new { 21600.minutes.from_now }
    handle_asynchronously :send_message_sixteen, :run_at => Proc.new { 23040.minutes.from_now }
    handle_asynchronously :send_message_seventeen, :run_at => Proc.new { 24480.minutes.from_now }
    handle_asynchronously :send_message_eighteen, :run_at => Proc.new { 25920.minutes.from_now }
    handle_asynchronously :send_message_nineteen, :run_at => Proc.new { 27360.minutes.from_now }
    handle_asynchronously :send_message_twenty, :run_at => Proc.new { 28800.minutes.from_now }
    handle_asynchronously :send_message_twentyone, :run_at => Proc.new { 30240.minutes.from_now }
    handle_asynchronously :send_message_twentytwo, :run_at => Proc.new { 31680.minutes.from_now }
    handle_asynchronously :send_message_twentythree, :run_at => Proc.new { 33120.minutes.from_now }
    handle_asynchronously :send_message_twentyfour, :run_at => Proc.new { 34560.minutes.from_now }
    handle_asynchronously :send_message_twentyfive, :run_at => Proc.new { 36000.minutes.from_now }
    handle_asynchronously :send_message_twentysix, :run_at => Proc.new { 37440.minutes.from_now }
    handle_asynchronously :send_message_twentyseven, :run_at => Proc.new { 38880.minutes.from_now }
    handle_asynchronously :send_message_twentyeight, :run_at => Proc.new { 40320.minutes.from_now }
    handle_asynchronously :send_message_twentynine, :run_at => Proc.new { 41760.minutes.from_now }
    handle_asynchronously :send_message_thirty, :run_at => Proc.new { 43200.minutes.from_now }
end
