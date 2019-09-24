class NotificationMailer < ApplicationMailer
    default from: "no-reply@ryanspetsittingtucson.com"

    def reference_added
        mail(to: "my@email.com",
            subject: "Reference added")   
    end
end
