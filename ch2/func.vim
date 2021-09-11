function! Length() dict
    return sqrt(self.x * self.x * self.y * self.y)
endfunction

function! NewVec2D(x,y)
    return {'x':a:x,'y':a:y, 'len': function("Length")}
endfunction

let g:vec2d = {'x':0, 'y':0}

function! g:vec2d.len() dict
    return sqrt(self.x * self.x * self.y * self.y)
endfunction

function! NVec2D(x,y)
    let self = copy(g:vec2d)
    let self.x = a:x
    let self.y = a:y
    return self
endfunction

function! FizzBuzz(num)
    if a:num % 15 == 0
        return 'FizzBuzz'
    elseif a:num % 5 == 0
        return 'Buzz'
    elseif a:num % 3 == 0
        return 'Fizz'
    else
        return a:num
    endif
endfunction

function! Whiling()
    let i =1
    while i <= 15
        echo FizzBuzz(i)
        let i = i + 1
    endwhile

endfunc

function! Assert1to10(num)
    if a:num < 1 || a:num > 10
        throw 'Out of range:' . a:num
    endi
endfunction

function! Guess()
    try 
        call Assert1to10(input('Guess a number.'))
        echo "\nYou are right"
    catch /^Out of range:./
        echo "\n Something bad..."
    finally
        echo 'Thank you for playing'
    endtry
endfunction
