python3 <<EOF
print("hello")
print("sonna")
print("kanji")
EOF

let s:msg = 'set by vim'
python3 << EOF
import vim
EOF

echo s:msg
