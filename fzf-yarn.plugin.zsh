_fzf_complete_yarn() {
  # Get all yarn commands
  YARN_COMMANDS=$(cat package.json | jq -r '.scripts' | sed -e 's/  "\(.*\)":\s*\(.*\)$/\1|\2/' | sed -e '1d;$d' | column -t -c 2 -s '|')

  ARGS="$@"
  if [[ $ARGS = 'yarn ' ]]; then
    _fzf_complete "--reverse -n 1 --height=80%" "$@" < <(
      echo $YARN_COMMANDS
    )
  fi
}

_fzf_complete_yarn_post() {
  # Post-process the fzf output to keep only the command name and not the explanation with it
  awk '{print $1}'
}

[ -n "$BASH" ] && complete -F _fzf_complete_yarn -o default -o bashdefault yarn
