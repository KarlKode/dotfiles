path_helper_path="/usr/libexec/path_helper"
[ -e "$path_helper_path" ] && eval `$path_helper_path -s`

unset path_helper_path
