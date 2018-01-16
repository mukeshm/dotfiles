set fish_greeting

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡ '
set __fish_git_prompt_char_stagedstate '→ '
set __fish_git_prompt_char_stashstate '↩ '
set __fish_git_prompt_char_upstream_ahead '↑ '
set __fish_git_prompt_char_upstream_behind '↓ '

#function fish_prompt
#        set last_status $status
#        set_color $fish_color_cwd
#        printf '%s' (prompt_pwd)
#        set_color normal
#        printf '%s ' (__fish_git_prompt)
#        set_color normal
#end

function fish_prompt --description 'Write out the prompt'
	if test -z $WINDOW
        printf '%s%s@%s%s %s%s%s λ >>= %s' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color blue) (set_color normal)
    else
        printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end