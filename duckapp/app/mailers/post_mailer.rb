 class PostMailer < ActiveMailer::Base
 	default from: "from@example.com"

 	def log_duck_email(task)
 		@post = post
 		@user = post.name

 		mail(to: @post.email, subject: "Your duck has been logged! Now what?")
 	end

 end