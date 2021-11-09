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
edit prompt1.org
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
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 154)
exe '2resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 2resize ' . ((&columns * 76 + 77) / 154)
exe '3resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 154)
exe '4resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 4resize ' . ((&columns * 76 + 77) / 154)
argglobal
balt places.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
let s:l = 6 - ((5 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists("places.org") | buffer places.org | else | edit places.org | endif
if &buftype ==# 'terminal'
  silent file places.org
endif
balt prompt1.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 067|
wincmd w
argglobal
if bufexists("people.org") | buffer people.org | else | edit people.org | endif
if &buftype ==# 'terminal'
  silent file people.org
endif
balt research.org
setlocal fdm=expr
setlocal fde=GetOrgFolding()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
7
normal! zo
let s:l = 3 - ((2 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
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
5
normal! zo
5
normal! zo
8
normal! zo
22
normal! zo
45
normal! zo
let s:l = 53 - ((46 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 030|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 154)
exe '2resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 2resize ' . ((&columns * 76 + 77) / 154)
exe '3resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 154)
exe '4resize ' . ((&lines * 67 + 68) / 137)
exe 'vert 4resize ' . ((&columns * 76 + 77) / 154)
if exists(':tcd') == 2 | tcd ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material | endif
tabnext 1
badd +1 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/research.org
badd +2 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/people.org
badd +2 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/places.org
badd +1 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/License.md
badd +0 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/prompts.md
badd +6 ~/Documents/coding\ work/git\ hub\ clones/OpenManuscripts/manuscripts/prompts/1/reference_material/prompt1.org
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
