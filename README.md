## Features available
- Connecting to a central user "hub" create a new user from a pool a redirect to it.
- The created user will be deleted on disconnect and made available again.
- Choosing the base name of the user by defining the $USERNAME environment variable.
- Choosing the password of the "hub" user.
- making the created users having a randomly generated password.
- Installing software and configuring the root user
- copying files within the user directory by putting files inside "user_files"
- Executing a script to customize temporary users and root user.

## Feature not available now
- having the same ssh key at each restart to avoid having to delete a public key each time
- Having custom scripts to help customize user.
