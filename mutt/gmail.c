source "gpg -d ~/.mutt/acc.c.gpg |"

set folder = "imaps://imap.gmail.com:993"                     
set spoolfile = "+INBOX"                                      
set postponed = "+[Gmail]/Drafts"                             
set header_cache = ~/.mutt/com.gmail.foo/cache/headers            
set message_cachedir = ~/.mutt/com.gmail.foo/cache/bodies         
set certificate_file = ~/.mutt/com.gmail.foo/certificates 
set smtp_authenticators = 'gssapi:login'
