class Subscriber < ActiveRecord::Base
    
    belongs_to :post, :counter_cache => true
    
    validates :phone, 
        presence: true, 
        length: { :in => 10..11, :too_long => "That is not a valid phone number length!" }, 
        numericality: true

    def send_message_intro(text)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: "You have been subscribed to " + text + "!"
        )
    end
    
    def send_message(text1)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text1
        )
    end
    
    def send_message_two(text2)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text2
        )
    end

    def send_message_three(text3)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text3
        )
    end

    def send_message_four(text4)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text4
        )
    end

    def send_message_five(text5)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text5
        )
    end

    def send_message_six(text6)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text6
        )
    end

    def send_message_seven(text7)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text7
        )
    end

    def send_message_eight(text8)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text8
        )
    end

    def send_message_nine(text9)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text9
        )
    end

    def send_message_ten(text10)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text10
        )
    end

    def send_message_eleven(text11)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text11
        )
    end

    def send_message_twelve(text12)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text12
        )
    end

    def send_message_thirteen(text13)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text13
        )
    end

    def send_message_fourteen(text14)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text14
        )
    end

    def send_message_fifteen(text15)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text15
        )
    end

    def send_message_sixteen(text16)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text16
        )
    end

    def send_message_seventeen(text17)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text17
        )
    end

    def send_message_eighteen(text18)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text18
        )
    end

    def send_message_nineteen(text19)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text19
        )
    end

    def send_message_twenty(text20)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text20
        )
    end

    def send_message_twentyone(text21)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text21
        )
    end

    def send_message_twentytwo(text22)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text22
        )
    end

    def send_message_twentythree(text23)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text23
        )
    end

    def send_message_twentyfour(text24)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text24
        )
    end

    def send_message_twentyfive(text25)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text25
        )
    end

    def send_message_twentysix(text26)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text26
        )
    end

    def send_message_twentyseven(text27)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text27
        )
    end

    def send_message_twentyeight(text28)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text28
        )
    end

    def send_message_twentynine(text29)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text29
        )
    end

    def send_message_thirty(text30)
        # Instantiate a Twilio client
        client = Twilio::REST::Client.new(TWILIO_CONFIG['account_sid'], TWILIO_CONFIG['auth_token'])
  
        # Create and send an SMS message
        client.account.messages.create(
            from: TWILIO_CONFIG['from'],
            to: self.phone,
            body: text30
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
