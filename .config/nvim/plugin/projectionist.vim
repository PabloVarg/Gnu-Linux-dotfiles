nnoremap <leader>A :A<CR>
nnoremap <leader>ps :Start!<CR>
nnoremap <leader>pc :Console<CR>
nnoremap <leader>pm :Make!<CR>

let g:projectionist_heuristics = {
    \   "*": {
    \       "*.cpp": {
    \           "console": "g++ {}.cpp -o {} && ./{} && rm {} && read",
    \           "make": "g++ {}.cpp -o {} && ./{} < input && rm {}"
    \       }
    \   },
    \   "pom.xml": {
    \       "*": {
    \           "start": "./mvnw spring-boot:run"
    \       },
    \       "src/main/java/*.java": {
    \           "alternate": "src/test/java/{}.java"
    \       },
    \       "src/test/java/*Tests.java": {
    \           "alternate": "src/main/java/{}.java"
    \       }
    \   }
    \ }
