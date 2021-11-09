let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd research.org
edit places.org
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 1resize ' . ((&columns * 67 + 67) / 134)
exe '2resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 2resize ' . ((&columns * 66 + 67) / 134)
exe '3resize ' . ((&lines * 51 + 53) / 106)
argglobal
balt people.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists("people.org") | buffer people.org | else | edit people.org | endif
if &buftype ==# 'terminal'
  silent file people.org
endif
balt places.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("research.org") | buffer research.org | else | edit research.org | endif
if &buftype ==# 'terminal'
  silent file research.org
endif
balt people.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
5
normal! zo
6
normal! zo
20
normal! zo
43
normal! zo
let s:l = 43 - ((42 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 43
normal! 0
wincmd w
exe '1resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 1resize ' . ((&columns * 67 + 67) / 134)
exe '2resize ' . ((&lines * 52 + 53) / 106)
exe 'vert 2resize ' . ((&columns * 66 + 67) / 134)
exe '3resize ' . ((&lines * 51 + 53) / 106)
if exists(':tcd') == 2 | tcd ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material | endif
tabnext 1
badd +43 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/research.org
badd +0 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/people.org
badd +0 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/places.org
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFI
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
