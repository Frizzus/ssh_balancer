# Container and on-the-fly-users customization
Heres how looks the `custom` directory

```markdown
./
├── global_files
│   └── ... 
├── global_init.sh
├── sudoers.custom.d 
├── user_files
│   ├── ...
│   └── ...
└── user_init.sh
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
This is a folder where all files and folder inside will be added to the `/root/global_files/` directory.
You can pass smaller scripts, configuration files and so on.

#### sudoers.custom.d
All the files in this folder will be included to the `sudoers` file.

### User
On the other hand the term **user** is used to talk about things that will be influencing the temporary users created on the fly on each ssh connection.

Files and directory in the **user** scope :
- user_init.sh
- user_files
