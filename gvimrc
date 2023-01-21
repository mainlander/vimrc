set noguipty
"color pablo
set guioptions-=T

if has("gui_macvim")
   " disable the original Cmd-T (open new tab)
   macmenu &File.New\ Tab key=<nop>
   " map Cmd-T to the CommandT plugin
   map <D-t> :CommandT<CR>
   set guifont=Meslo\ LG\ S\ Regular\ Nerd\ Font\ Complete\ Mono:h24
   let g:smartim_default = 'com.apple.keylayout.ABC'
elseif has("gui_running")
   if has("win32") || has("win64")
      set langmenu=zh_TW.utf-8
      source $VIMRUNTIME/delmenu.vim
      source $VIMRUNTIME/menu.vim
      language messages zh_TW.utf-8
      set guifont=Consolas:h17
      set guifontwide=DFKai\-SB:h17
   else
      set guifont=Monospace\ 18
   endif
endif

function! Multiple_cursors_before()
  let g:smartim_disable = 1
endfunction
function! Multiple_cursors_after()
  unlet g:smartim_disable
endfunction
