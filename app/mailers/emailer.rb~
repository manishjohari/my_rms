class Emailer < ActionMailer::Base
 
  
    	default from: "from@gmail.com"
    	
			def welcome_email(userleave,user,sent_at = Time.now)
			@userleave=userleave
			@subject    = 'Apply Leave'

			@recipients = user.email
			@from  = 'idifytest@gmail.com'	
			mail :to => user.email, :subject => "Apply Leave"
			end


			def welcome_announcement(announcement,user,sent_at=Time.now)
			@announcement=announcement
			@subject ='Announcement'
			@from =user.email
			@from ='idifytest@gmail.com'
			mail :to => user.email, :subject => "Announcement"
			end


			def invitation_user(user,email,pass,sent_at=Time.now)
			@user=user
			@email=email
      @password=pass
			@subject ='www.idifysolutions.com'
			@from =user.email
			@from ='idifytest@gmail.com'
			mail :to => user.email, :subject => "invitation"
			end
  
  
  
  
  
  
  
end


