shell_name="challenge_suid"
export PS1="[\e[0;32m$shell_name\e[0;93m\$\e[m]\e[1;93m\w > \e[m"

# A small script to change how the shell looks
# The variable PS1 will be printed on the terminal
# There is some special characters are interpreted by the terminal :
# - \e[ color_code m : everything after theses characters will be colored. 
# - \e[m : cancel color changes.
# - 0;32 : is a color code and means, "0" for normal styling, "32" for color green.
# - \$ : it will print "$" if the user is a simple user and "#" if the user is a root user.
# - \w : it will print the path to the current directory.

# Here are some links to help you being creative ;)
# - https://misc.flogisoft.com/bash/tip_colors_and_formatting
# - https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# PS : Not all termina implement the render the same way, check compatibility.
