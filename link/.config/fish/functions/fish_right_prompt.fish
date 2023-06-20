function fish_right_prompt

  if test "$CMD_DURATION" -gt 1000
    printf " ~"(printf "%.1fs " (math "$CMD_DURATION / 1000"))
  end

  printf " "(date +%H:%M:%S)" "
end
