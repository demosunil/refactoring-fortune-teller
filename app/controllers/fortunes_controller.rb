class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("zodiacs_sign")
    #@horoscope = params.fetch("zodiacs_sign").capitalize
    #@current_sign= params.fetch("zodiacs_sign").to_sym
  all_zodiacs =Zodiac.list
  this_zodiac = all_zodiacs.fetch(@sign.to_sym)
  @horoscope =this_zodiac.fetch(:horoscope)
  @array_of_numbers = []
  5.times do
    another_number = rand(1...100)
    
    @array_of_numbers.push(another_number)
    end
    render({ :template => "aqua_templates/horoscope.html.erb"})
     end
  

  class Zodiac
    def Zodiac.list
      horoscope_list = Hash.new
      horoscope_list={ :aries =>{ 
      :name=> "Aries",
   :horoscope=> "As your professional dreams unfold, Aries, you may worry about the downside. First, there are new responsibilities that you might doubt your ability to fulfill. Second, you might be catapulted into an uncomfortable new realm of office politics. Don't let these matters put a damper on your enthusiasm. You have what it takes to fulfill the first concern and the wisdom to avoid the second.Onward and upward."},

  :taurus => {:name => "Taurus",
  :horoscope =>"Recent spiritual breakthroughs might have you feeling both exhilarated and downcast, Taurus. Your sensitive side tells you that this is a definite step forward on your spiritual path, but the logical side might cause you to doubt its reality. Take comfort in the fact that reality is relative and that what you're sensing is at least valid for you. Then keep moving ahead."},
  :gemini =>{:name => "Gemini",
  :horoscope =>"Many of your personal goals have either been met or are in progress, Gemini, and you're feeling exhilarated. However, people around you might have their hands out. You may be asked to contribute to charities or make personal loans to people you don't know well. You want to help whenever you can, but be discriminating about whom you help now. Some may be less than trustworthy."},
     :libra => {:name => "Libra",
     :horoscope =>"People close to you might be a bit worried about you, Libra. Too much work and socializing might have you feeling less than your usual self, and perhaps even a little feverish and headachy. If so, this is a good day to take time out, stay home, and rest. Don't worry about sabotaging your success. It will continue.
     Take a break and your body will reward you with greater clarity and concentration."},
     :aquarius => {:name => "Aquarius",
     :horoscope=>"Today may prove to be one of your busiest in a long time, Aquarius. The promise of continuing success in your personal and professional goals could find you spending a lot of time on the phone, writing emails, or making a few short trips around the community. You might not be able to reach everyone you need to see. Don't worry. Be persistent and you will reach them eventually."},
     :virgo => {:name=>"Virgo",
     :horoscope => "Hard work, enthusiasm, and dedication are now paying off financially, Virgo. New opportunities are opening up to profitably make use of your artistic side. The downside is that you might be working so hard that you're too drained to be creative even though the inspiration is there. Take a moment to rework your schedule to accomplish the most in the least amount of time. 
        You can do it."},
      :capricorn => {:name => "Capricorn",
      :horoscope =>"You could be on a real emotional high today because of your success and that of other household members, Capricorn. Your mind may be buzzing with ideas for future expansion, some of which may not be all that workable. However, you should allow yourself a few flights of fancy. Tomorrow your feet will be back on the ground and you will see things in a more practical light."},
      :leo => {:name=> "Leo",
       :horoscope=>"Success on all levels is filling your life and making you feel absolutely wonderful, Leo. The downside of this is that you might be a little too conscientious. Are you putting in a lot of extra hours? Be discriminating about this and don't work harder than necessary. You could get stressed to the point of taxing your strength too much, and that won't help you. Pace yourself."},
     :sagittarius => {:name => "Sagittarius",
     :horoscope=> "The high from your recent successes could make you want to purchase luxury items that you used to think were impractical, Sagittarius. This is fine as long as you're discriminating and don't give in to impulse buying. This also isn't a good time to overindulge in food or drink. You should let yourself enjoy your success while still using common sense."},
     :cancer => {:name => "Cancer",
     :horoscope => "Confirmation of professional success could come your way, Cancer, and you're probably feeling excited and motivated to keep pushing. But you may find that increased responsibilities interfere with your social life. You wonder if friends have forgotten you. They haven't, but it will make you feel better if you squeeze in a few hours for your friends each week.Remember what they say about all work and no play."},
     :scorpio => {:name => "Scorpio",
     :horoscope =>"All continues to go well professionally, Scorpio. You're feeling physically strong and vigorous. Mentally, however, you might be a bit vague. You may be easily distracted and not as sharp as usual. This isn't a good day to start a new project. Try to concentrate on finishing old tasks and tying up loose ends. You should be ready to go again in a couple of days."},
     :pisces => {:name =>"Pisces",
     :horoscope => "Business and financial success makes you happy and satisfied, Pisces. You also look forward to moving on. The downside of this flush period is that people who aren't particularly trustworthy might decide to latch onto your coattails for their own purposes. Some might even ask for loans. Be careful about the ones you assist. They might not be honest with you.
     Don't fall for any sob stories."}
    }
    
    end
  end
   
end
     

#def aries
     # @horoscope = "As your professional dreams unfold, Aries, you may worry about the downside. First, there are new responsibilities that you might doubt your ability to fulfill. Second, you might be catapulted into an uncomfortable new realm of office politics. Don't let these matters put a damper on your enthusiasm. You have what it takes to fulfill the first concern and the wisdom to avoid the second.Onward and upward."
     
     #render({ :template => "aqua_templates/horoscope.html.erb"})
     #end

     #def taurus
     # @horoscope = "Recent spiritual breakthroughs might have you feeling both exhilarated and downcast, Taurus. Your sensitive side tells you that this is a definite step forward on your spiritual path, but the logical side might cause you to doubt its reality. Take comfort in the fact that reality is relative and that what you're sensing is at least valid for you. Then keep moving ahead."
     #render({ :template => "aqua_templates/horoscope.html.erb"})
    
     #end
  
