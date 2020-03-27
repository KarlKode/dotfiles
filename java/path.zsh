#java_home_path="/usr/libexec/java_home_path"
java_home_path="/usr/libexec/java_home"
[ -e "$java_home_path" ] && export JAVA_HOME=`$java_home_path`

unset java_home_path

