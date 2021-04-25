filetype plugin on
runtime! plugin/textobj/function.vim

function StripRailsLocation(path)
  return substitute(a:path, '^app/.\{-}/', '', '') "\{-} means non-greedy
endfunction

describe 'StripRailsLocation'
  it 'strips app dir'
    Expect StripRailsLocation('app/model/user.rb') == 'user.rb'
  end
 
  " it 'returns a floor of a positive number'
  "   Expect math#round_to_zero(0.1) == 0
  "   Expect math#round_to_zero(1) == 1
  "   Expect math#round_to_zero(1.23) == 1
  "   Expect math#round_to_zero(123.456) == 123
  " end
 
  " it 'returns a ceiling of a negative number'
  "   Expect math#round_to_zero(-0.1) == 0
  "   Expect math#round_to_zero(-1) == -1
  "   Expect math#round_to_zero(-1.23) == -1
  "   Expect math#round_to_zero(-123.456) == -123
  " end
end
