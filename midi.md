
# <!-- {{{ -->    LANGUAGE SMART EDITING WITH NEOVIM 

        My goal for this presentation is to show you the power that
           Neovim gives you and a bit to show off the incredible
                    developer experience it provides

     Its a Vim fork that added Lua for configuration and an LSP client

      It only takes learning 1-3 different languages to configure it

<!-- }}} -->

# <!-- {{{ -->    WHAT PEOPLE EXPECT OF THEIR IDE 

  Features:

    ai integration            goto declaration         plugin support                     
    auto includes             goto definition          refactoring                        
    build system integration  goto interface           regex searching                    
    call hierarchy            goto references          remote file editing                
    code folding              goto type definition     renaming                           
    completion                highlighting             repeat actions                     
    debugger integration      hover menu               snippets                           
    diagnostics               in-editor documentation  source control integration         
    file diffing              integrated terminal      spellcheck                         
    file navigation           linting                  test integration                   
    file tree                 list file symbols        text replace                       
    formatting                list workspace symbols   whitespace visualization           
    function signature help   multicursors             window management                      

<!-- }}} -->

# <!-- {{{ -->    NEOVIM FEATURES OUT OF THE BOX WITH NO CONFIG 

  Features:

                              goto declaration
                              goto definition                                             
    build system integration                           regex searching                    
                              goto references          remote file editing                
    code folding                                                                          
    completion                                         repeat actions                     
    debugger integration                                                                  
    diagnostics               in-editor documentation                                     
    file diffing              integrated terminal      spellcheck                         
    file navigation           linting                  test integration                   
    file tree                                          text replace                       
    formatting                                         whitespace visualization           
                              multicursors             window management                      

<!-- }}} -->

# <!-- {{{ -->    NEOVIM FEATURES WITH CONFIG 

  Features:

                              goto declaration         plugin support                     
    auto includes             goto definition          refactoring                        
    build system integration  goto interface           regex searching                    
    call hierarchy            goto references          remote file editing                
    code folding              goto type definition     renaming                           
    completion                highlighting             repeat actions                     
    debugger integration      hover menu               snippets                           
    diagnostics               in-editor documentation  
    file diffing              integrated terminal      spellcheck                         
    file navigation           linting                  test integration                   
    file tree                 list file symbols        text replace                       
    formatting                list workspace symbols   whitespace visualization           
    function signature help                            window management                      

<!-- }}} -->

# <!-- {{{ -->    NEOVIM FEATURES WITH PLUGINS 

  Features:

    ai integration            goto declaration         plugin support                     
    auto includes             goto definition          refactoring                        
    build system integration  goto interface           regex searching                    
    call hierarchy            goto references          remote file editing                
    code folding              goto type definition     renaming                           
    completion                highlighting             repeat actions                     
    debugger integration      hover menu               snippets                           
    diagnostics               in-editor documentation  source control integration         
    file diffing              integrated terminal      spellcheck                         
    file navigation           linting                  test integration                   
    file tree                 list file symbols        text replace                       
    formatting                list workspace symbols   whitespace visualization           
    function signature help   multicursors             window management                      

<!-- }}} -->

# <!-- {{{ -->    DEEPER EXPLANATION OF BUILTIN FEATURES 

   Demo of zero-config capabilities:

   src/poky/scripts/
   https://github.com/anakin4747/midi-techno

    file tree           - provided by netrw, :Explore, :Lexplore, :Rexplore (see :help netrw)
    file navigation     - gf, gx, <C-o>, <C-i> 
    remote file editing

   src/poky/scripts/runqemu

    goto declaration  - gD
    goto definition   - gd
    goto references   - *, g*, #, g#,
    regex searching   - :vim, :lvim, :grep, :lgrep, :cnext, :cprev, :copen, :cclose
    completion        - i_CTRL-N, i_CTRL-X and friends :help ins-completion
    formatting        - =, >, <, gq, gw, gu, gU, :retab, :left, :right, :center, :set formatprg?
    folding           - zm, zM, zr, zR, zo, zO, zc, zC (see :h folding)
    linting*          - :compiler ruff
    diagnostics       - :copen, :cclose, :cnext, :cprev

    text replace

   ```vim
   %s/main/main2/g
   %s/\v(create)_(logger)/\2_\1/g
   ```

    integrated terminal - :terminal

   ```vim
   cd src/htop
   set shell=bash
   terminal
   ```
   ```sh
   ./autogen.sh && ./configure
   ```
    build system integration - :make, :compiler
    in-editor documentation  - K, :Man
    debugger integration     - :packadd termdebug, :Termdebug htop

    repeat actions - > multiple rows and repeat . . .

    window management - <C-w><C-w>, <C-w>[hjkl], <C-w>[HJKL], <C-w>o, <C-w>c, <C-w>s, <C-w>v, <C-w>x
                        :windo

    file diffing - :diffthis, :diffoff, :windo diffthis

   ```vim
   vertical new
   read #
   ```

    spellcheck - [s, ]s

   ```vim
   set dictionary=/usr/share/dict/words
   set spell
   ```
spellingmistake

	whitespace visualization - set list                                                                         

    multicursors* - macros and :global

TODO

<!-- }}} -->

# <!-- {{{ -->    FEATURES ADDED WITH CONFIG BUT NOT PLUGINS

  Neovim has LSP client support meaning that with a little config we can get
  these LSP features:

    auto includes
    call hierarchy
    diagnostics
    function signature help
    goto declaration
    goto definition
    goto interface
    goto type definition
    list file symbols
    list workspace symbols
    refactoring
    renaming

  BUT NOT LANGUAGE SERVERS ARE CREATED EQUAL

<!-- }}} -->

# <!-- {{{ -->    


<!-- }}} -->

    plugin support - provided by ~/.config/nvim/pack/<plugin>/{start,opt}/<plugin>
                     :scriptnames

# <!-- {{{ --> NOTES 

- features that other editors don't have:
  - macros
  - registers
  -

- completion
  - builtin manual completion that is more explicit than typical editors
  - automatic completion not supported out of box
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

<!-- vim: set nowrapscan nonumber norelativenumber nohlsearch foldmethod=marker noruler laststatus=0: -->
