It's a web based remote control.  mplayerd and pianobard should be
running on the same host as the web server.

It might be neat to decouple the remote role from the display role, so
they can be on different hosts, but right now they must be in the same
place.

There should really also be a "storage_client" role, or similar.  Some
of that functionality is in the remote role right now.
