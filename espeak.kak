define-command espeak -params ..1 -docstring 'pronounce selections or argument' %{
  exec -draft %arg{1}'<a-|>espeak<ret>'
}

declare-user-mode global espeak

# those are suggestions, don't hesitate to add your owns
map global espeak b ':nop %sh{espeak $kak_bufname}<ret>'        -docstring 'buffer name'
map global espeak c ':nop %sh{espeak $kak_selection_desc}<ret>' -docstring 'coordinates'
map global espeak e ':espeak<ret>'                              -docstring 'selections'
map global espeak p ':espeak <lt>a-i>p<ret>'                    -docstring 'paragraph'
map global espeak s ':espeak <lt>a-i>s<ret>'                    -docstring 'sentence'
map global espeak w ':espeak <lt>a-i>w<ret>'                    -docstring 'word'
map global espeak x ':espeak x<ret>'                            -docstring 'line'

# Suggested mappings

#map global normal <a-,> ':enter-user-mode global espeak<ret>'
