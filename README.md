<h1>Level Up Anti-Squatter</h1><br>

![darth](https://github.com/MCPL-Indiana/StudioSquatter/assets/69050280/5f503b95-a4a4-40b3-bf2b-7fba51d75a43)

This is the Level Up Studio Anti-Squatter Program written in Swift for the Level Up Staff Desk.  This MacOS app allows staff to send messages and time warnings to Patrons in the Studios plus shutdown the computers for those Patrons refusing to leave at the end of their reservation.

<img width="350" alt="Screenshot 2024-04-22 at 9 22 36 AM" src="https://github.com/MCPL-Indiana/StudioSquatter/assets/69050280/2e20a23d-ae21-4b50-8442-d8c32bd3435c">

<br><br><h1>Installation</h1>
  1. Setup requires adding Root to the Studio iMac's
  2. Enable Remote Login, check Full Disk access and enable for Everyone
  3. On each Studio edit /private/etc/sshd_config and edit & uncomment the line - PermitRootLogin yes
  4. On the Staff Mac in terminal enter "ssh-copy-id root@10.10.25.68" & "ssh-copy-id root@10.10.25.67" (the local IP's of the Studio iMacs)
  5. Then enter "ssh-copy-id a_usermac@10.10.25.68" & "ssh-copy-id a_usermac@10.10.25.67"
  6. Copy StudioSquatter.app to /Applications on Staff Mac
  7. Send messages to each Studio
  8. Save the Profile on each Studio (to save the SSH key stored on the Staff mac)

  
