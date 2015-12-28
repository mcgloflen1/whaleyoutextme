class SubscribersController < ApplicationController

  attr_accessor :post

  def new
    @post = Post.find(params[:post_id])
    @subscriber = Subscriber.new

  end

  def create
      @post = Post.find(params[:post_id])
      @subscriber = @post.subscribers.create(subscriber_params)
      

      charge_error = nil
      
      if @subscriber.valid?

          begin
            charge = Stripe::Charge.create(
              :source => params[:stripeToken],
              :amount => 100,
              :description => 'Rails Stripe customer',
              :currency => 'usd'
            )
          rescue Stripe::CardError => e
            # The card has been declined
          end
          if charge_error
            flash[:error] = charge_error
            render "/"
          else
            @subscriber.save

            intro = @post.title
            text1 = @post.text1
            text2 = @post.text2
            text3 = @post.text3
            text4 = @post.text4
            text5 = @post.text5
            text6 = @post.text6
            text7 = @post.text7
            text8 = @post.text8
            text9 = @post.text9
            text10 = @post.text10
            text11 = @post.text11
            text12 = @post.text12
            text13 = @post.text13
            text14 = @post.text14
            text15 = @post.text15
            text16 = @post.text16
            text17 = @post.text17
            text18 = @post.text18
            text19 = @post.text19
            text20 = @post.text20
            text21 = @post.text21
            text22 = @post.text22
            text23 = @post.text23
            text24 = @post.text24
            text25 = @post.text25
            text26 = @post.text26
            text27 = @post.text27
            text28 = @post.text28
            text29 = @post.text29
            text30 = @post.text30

            @subscriber.send_message_intro(intro)
            @subscriber.send_message(text1)
            @subscriber.send_message_two(text2)
            @subscriber.send_message_three(text3)
            @subscriber.send_message_four(text4)
            @subscriber.send_message_five(text5)
            @subscriber.send_message_six(text6)
            @subscriber.send_message_seven(text7)
            @subscriber.send_message_eight(text8)
            @subscriber.send_message_nine(text9)
            @subscriber.send_message_ten(text10)
            @subscriber.send_message_eleven(text11)
            @subscriber.send_message_twelve(text12)
            @subscriber.send_message_thirteen(text13)
            @subscriber.send_message_fourteen(text14)
            @subscriber.send_message_fifteen(text15)
            @subscriber.send_message_sixteen(text16)
            @subscriber.send_message_seventeen(text17)
            @subscriber.send_message_eighteen(text18)
            @subscriber.send_message_nineteen(text19)
            @subscriber.send_message_twenty(text20)
            @subscriber.send_message_twentyone(text21)
            @subscriber.send_message_twentytwo(text22)
            @subscriber.send_message_twentythree(text23)
            @subscriber.send_message_twentyfour(text24)
            @subscriber.send_message_twentyfive(text25)
            @subscriber.send_message_twentysix(text26)
            @subscriber.send_message_twentyseven(text27)
            @subscriber.send_message_twentyeight(text28)
            @subscriber.send_message_twentynine(text29)
            @subscriber.send_message_thirty(text30)

            redirect_to "/"
            flash[:success] = "You are now subscribed to " + intro + "!"
          end
      else
          redirect_to new_post_subscriber_path
          flash[:error] = "Invalid phone number. Payment not processed. Please try again!"
      end
      
  end

private
  def subscriber_params
      params.require(:subscriber).permit(:phone, :post_id, :stripeToken)
  end

end
