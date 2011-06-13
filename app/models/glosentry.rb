class Glosentry < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :keyword
  validates_length_of :keyword, :maximum => 64
  
    class GlosentryHelper
      include ActionView::Helpers::TextHelper
    end

    def helper
      @h ||= GlosentryHelper.new
    end

    def short_explanation(len=20) 
      helper.truncate(self.explanation, :length => len)
    end
  end
