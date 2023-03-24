fu! Test(name, age)
	let name = a:name

	let age = a:age
	let age = age + 10

	let &statusline = "hello : " . name . age
endf

" :call Test("nguyen", 20) : run

command! -nargs=* Test call Test(<f-args>)

" Test command
nnoremap <Leader>i :Test<Space>


