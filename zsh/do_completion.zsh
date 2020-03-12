# provide command completion for ThoughtWorks do scripts
_do_completions() {
  local normal=$(echo "\x0f")
  if [[ -f "./do.sh" ]]; then
    local options=$(./do.sh help | tail -n +2 | tr -d ${normal})
  else  
    local options=$(./do help | tail -n +2 | tr -d ${normal})
  fi
  local words=""
  while read -r line; do
    #COMREPLY+=$(echo "$line" | cut -d' ' -f1)
    words+="$(echo "$line" | cut -d' ' -f1) "
  done <<< "$options"
  COMPREPLY=($(compgen -W "$words" "${COMP_WORDS[1]}"))
}

complete -F _do_completions do.sh
complete -F _do_completions do