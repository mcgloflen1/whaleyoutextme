class Post < ActiveRecord::Base
    belongs_to :user
    has_many :subscribers

    acts_as_taggable

	validates :title, :description, :text1, :text2, :text3, :text4, :text5, :text6, :text7, :text8, :text9, :text10, :text11, :text12, :text13, :text14, :text15, :text16, :text17, :text18, :text19, :text20, :text21, :text22, :text23, :text24, :text25, :text26, :text27, :text28, :text29, :text30, :presence => true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "url('https://s-media-cache-ak0.pinimg.com/736x/be/4e/f6/be4ef66a229caa8232fff19982d75d52.jpg')"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  	scope :approved, -> {
  		where(:postreview => false)
  	}

  	scope :pending, -> { 
  		where(:postreview => true)
  	}

  	scope :newest, -> {
  		order("created_at desc")
  	}

  	scope :oldest, -> {
  		order("created_at asc")
  	}

    scope :popular, -> {
      order("subscribers_count desc")
    }



end
