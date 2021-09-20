let proc = vimproc#popen2('ls')
let res = ''
while !proc.stdout.eof
    let res .= proc.stdout.read()
endwhile

let [cond,status] = proc.waitpid()
echo status
