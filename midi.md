
# LANGUAGE SMART EDITING WITH NEOVIM <!-- {{{ -->

My goal for this presentation is to show you the power that
   Neovim gives you and a bit to show off the incredible
              developer experience it provides

<!-- }}} -->

# WHAT PEOPLE EXPECT OF THEIR IDE <!-- {{{ -->

Features:

    ai integration                     in-editor documentation
    auto includes                      integrated terminal
    build system integration           linting
    call hierarchy                     list file symbols
    code folding                       list workspace symbols
    completion                         multicursors
    debugger integration               plugin support
    diagnostics                        refactoring
    file diffing                       regex searching
    file navigation                    remote file editing
    file tree                          renaming
    formatting                         repeat actions
    function signature help            snippets
    goto declaration                   source control integration
    goto definition                    spellcheck
    goto interface                     test integration
    goto references                    text replace
    goto type definition               whitespace visualization
    highlighting                       window management
    hover menu

<!-- }}} -->

# NEOVIM FEATURES OUT OF THE BOX WITH NO CONFIG <!-- {{{ -->

Features:

                                       in-editor documentation
                                       integrated terminal
    build system integration           linting*

    code folding
    completion                         multicursors*
    debugger integration               plugin support
    diagnostics
    file diffing                       regex searching
    file navigation                    remote file editing
    file tree
    formatting                         repeat actions

    goto declaration*
    goto definition*                   spellcheck

    goto references*                   text replace
                                       whitespace visualization
    highlighting*                      window management


<!-- }}} -->

# NEOVIM FEATURES WITH CONFIG <!-- {{{ -->

Features:

                                       in-editor documentation
    auto includes                      integrated terminal
    build system integration           linting
    call hierarchy                     list file symbols
    code folding                       list workspace symbols
    completion                         
    debugger integration               plugin support
    diagnostics                        refactoring
    file diffing                       regex searching
    file navigation                    remote file editing
    file tree                          renaming
    formatting                         repeat actions
    function signature help            snippets
    goto declaration                   
    goto definition                    spellcheck
    goto interface                     
    goto references                    text replace
    goto type definition               whitespace visualization
    highlighting                       window management
    hover menu

<!-- }}} -->

# NEOVIM FEATURES WITH PLUGINS <!-- {{{ -->

Features:

    ai integration                     in-editor documentation
    auto includes                      integrated terminal
    build system integration           linting
    call hierarchy                     list file symbols
    code folding                       list workspace symbols
    completion                         multicursors
    debugger integration               plugin support
    diagnostics                        refactoring
    file diffing                       regex searching
    file navigation                    remote file editing
    file tree                          renaming
    formatting                         repeat actions
    function signature help            snippets
    goto declaration                   source control integration
    goto definition                    spellcheck
    goto interface                     test integration
    goto references                    text replace
    goto type definition               whitespace visualization
    highlighting                       window management
    hover menu

<!-- }}} -->

# DEEPER EXPLANATION OF BUILTIN FEATURES <!-- {{{ -->

Demo of zero-config capabilities

    completion                     in-editor documentation  
    build system integration       integrated terminal      
    diagnostics                    linting*                 
    debugger integration           multicursors*            
    file diffing                   plugin support           
    file navigation                regex searching          
    file tree                      remote file editing      
    folding                        repeat actions           
    formatting                     spellcheck               
    goto declaration*              text replace             
    goto definition*               whitespace visualization 
    goto references*               window management        
    highlighting

<!-- }}} -->

# NOTES <!-- {{{ -->
Organize these by:
- supported out of the box
- supported by configuration
- supported by plugin configuration
- enhanced by configuration
- enhanced by plugin configuration
- not supported

- completion
  - builtin manual completion that is more explicit than typical editors
  - automatic completion not supported out of boxy
  - completion can be enhanced by configuration and plugin configuration
- hover menu
  - no hover menu by default
  - hover menu can be provided by configuration
  - can be enhanced by plugin configuration
- function signature help
  - no signature help by default
  - can be provided by configuration
  - can be enhanced by plugin configuration
- diagnostics
  - no diagnostics by default
  - can be provided by configuration
  - can be enhanced by plugin configuration
- renaming
  - non-language aware text replace can be done with substitute out of the box
  - can be provided by configuration
  - can be enhanced by plugin configuration
- linting
  - provided by :compiler and :make
    eslint.vim – ESLint (JavaScript/TypeScript linter)
    jshint.vim – JSHint (JavaScript linter)
    checkstyle.vim – Checkstyle (Java linter)
    cppcheck.vim – Cppcheck (C/C++ linter)
    csslint.vim – CSSLint (CSS linter)
    jsonlint.vim – JSONLint (JSON validator/linter)
    perlcritic.vim – Perl::Critic (Perl linter)
    pylint.vim – Pylint (Python linter)
    rubocop.vim – RuboCop (Ruby linter)
    ruff.vim – Ruff (Fast Python linter)
    shellcheck.vim – ShellCheck (Shell script linter)
    splint.vim – Splint (C code linter)
    spotbugs.vim – SpotBugs (Java static analysis tool, successor to FindBugs)
    standard.vim – JavaScript Standard Style (JavaScript linter)
    stylelint.vim – stylelint (CSS/SCSS linter)
    yamllint.vim – YAMLlint (YAML linter)
    xo.vim – xo (JavaScript/TypeScript linter)
- formatting
  - gq, gw, gu, gU
  - :retab
  - :left, :center, :right
  - &formatprg
- goto definition
- goto declaration
- goto references
- goto interface
- goto type definition
- call hierarchy
- remote file editing
- refactoring
- testing integration
- source control integration
- build system integration
- debugger integration
- ai integration
- spellcheck
- plugin support
- multicursors
- code folding
- snippets
- whitespace visualization
- file tree
- integrated terminal
- list file symbols
- list workspace symbols
- auto includes/imports/requires
- file finding
- regex finding
- window management
- highlighting
- refactoring
- repeat actions
- in-editor documentation
  - man pages

<!-- }}} -->

<!-- vim: set nonumber norelativenumber nohlsearch foldmethod=marker noruler laststatus=0: -->
