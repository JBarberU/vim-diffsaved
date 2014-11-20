function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

function! s:DiffWithSavedClose()
	diffoff
endfunction

com! DiffSaved call s:DiffWithSaved()
com! DiffSavedClose call s:DiffWithSavedClose()

