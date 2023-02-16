function _fish_remove_path
  if set -l index (contains -i "$argv" $fish_user_paths)
    set -e fish_user_paths[$index]
  end
  if set -l index (contains -i "$argv" $PATH)
    set -e PATH[$index]
  end
end
