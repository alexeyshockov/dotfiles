unset PROMPT_COMMAND

# Better command prompt.
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
[[ $- = *i* ]] && eval "$(starship init bash)"
