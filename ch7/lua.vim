echo has('lua')
:lua print("hello lua")

lua << EOF
do 
    local foo =3
end
EOF

let s:msg ='vim'

lua<<EOF
do 
 local s = vim.eval('s:')
 print(s['msg'])
 s['msg'] = 'Set by lua'
end
EOF
echo s:msg
