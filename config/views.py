import os
from django.views.static import serve


def last_reset_pwd_email(request):
    sent_emails_dir = "sent_emails"
    filename = max(os.listdir(sent_emails_dir))
    return serve(request, filename, sent_emails_dir)
