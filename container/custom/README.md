# Container and on-the-fly-users customization
Heres how looks the `custom` directory
**Do not forget to take a look at the helper scripts in `./helpers`.**

```markdown
./
├── global_files
│   └── ... 
├── global_init.sh
├── sudoers.custom.d 
├── user_files
│   ├── ...
│   └── ...
├── user_init.sh
└── profile.sh
```

## The differences between `global` and `user`
### Global
In my files I use the term **global** to talk about things that will be influencing the root user.
Files and directory in the **global** scope :
- global_init.sh
- global_files
- sudoers.custom.d

#### global_init.sh
This is the **initialization** bash script for the **root** user
Some example of what you can do :
- Create a new permanent user
- Install tools, services ...
- Configuration of tools
- Source other bash script for organisation

#### global_files
This is a directory where all files and folder inside will be added to the `/root/global_files/` directory.
You can pass smaller scripts, configuration files and so on.

#### sudoers.custom.d
All the files in this folder will be included to the `sudoers` file.

### User
On the other hand the term **user** is used to talk about things that will be influencing the temporary users created on the fly on each ssh connection.

Files and directory in the **user** scope :
- user_init.sh
- user_files

#### user_init.sh
This is the **initialization** bash script that will run for **each of the temporary users**. The script is evaluated as the **hub** user.
Some example of what you can do :
- Add files to the user's home
- Changes permission of the user's home

#### user_files
All files/directories of this directory will be added to the `/home/hub/user_files/` directory. You can access them from the user_init.sh file.

#### profile.sh
This file will be copied as `.profile` for each temporary user. This is a great file to add shell customization or PATH.
