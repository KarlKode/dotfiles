fpath_tmp=()

#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath_tmp=($topic_folder $fpath_tmp); fi;

fpath=( "${fpath[@]}" "/usr/local/share/zsh-completions" "${fpath_tmp}" )
