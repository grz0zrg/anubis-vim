if exists("current_compiler")
  finish
endif
let current_compiler = "anubis"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=anubis\ -nocolor\ -build_time\ %:p

CompilerSet errorformat=%E%f\ (line\ %l\\,\ column\ %c)\ %trror\ E%n\:,%Z%m
"    \%+E%f:%l:\ parse\ error,
"    \%W%f:%l:\ warning:\ %m,
"    \%E%f:%l:in\ %*[^:]:\ %m,
"    \%E%f:%l:\ %m,
"    \%-C%\tfrom\ %f:%l:in\ %.%#,
"    \%-Z%\tfrom\ %f:%l,
"    \%-Z%p^,
"    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
