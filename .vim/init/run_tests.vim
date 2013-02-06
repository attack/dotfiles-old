function! BundleExec(name)
  if filereadable("Gemfile")
    return "bundle exec " . a:name . " "
  else
    return a:name . " "
  end
endfunction

function! RunTests(filename)
  " Write the file and run tests for the given filename
  :w
  if match(a:filename, '^all$') == 0
    " exec ":!rake"
    echo "DISABLED: currently disabled while I fix rvm rake issue"
  else
    if match(a:filename, '\.feature$') != -1
      if match(a:filename, '^$') == 0
        " exec ":!" . BundleExec("rake cuke")
        echo "DISABLED: currently disabled while I fix rvm rake issue"
      else
        exec ":!" . BundleExec("cucumber --drb") . a:filename
      end
    else
      if match(a:filename, '^$') == 0
        " exec ":!rake spec"
        echo "DISABLED: currently disabled while I fix rvm rake issue"
      else
        exec ":!" . BundleExec("rspec --color --drb") . a:filename
      end
    end
  end
endfunction

function! InTestFile()
  let t:in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
endfunction

function! SetTestFile()
  " Set the spec file that tests will be run for.
  let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
  " append the line constraint, if present
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  " Run the tests for the previously-marked file.
  call InTestFile()
  if t:in_test_file
    call SetTestFile()
  elseif !exists("t:grb_test_file")
    echo "ERROR: Not in a test file"
    return
  end
  call RunTests(t:grb_test_file .  command_suffix)
endfunction

function! RunNearestTest()
  call InTestFile()
  if t:in_test_file
    let spec_line_number = line('.')
    call RunTestFile(":" .  spec_line_number)
  else
    call RunTestFile()
  end
endfunction

" map <leader>s :call RunTestFile()<cr>
map <leader>S :call RunNearestTest()<cr>
" map <leader>a :call RunTests('')<cr>
map <leader>A :call RunTests('all')<cr>
" map <leader>c :w\|:!cucumber<cr>
" map <leader>w :w\|:!cucumber --profile wip<cr>

