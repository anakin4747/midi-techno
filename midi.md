
# <!-- {{{ -->    LANGUAGE SMART EDITING WITH NEOVIM

        My goal for this presentation is to show you the power that
           Neovim gives you and a bit to show off the incredible
                    developer experience it provides

     Its a Vim fork that added Lua for configuration and an LSP client

      It only takes learning 1-3 different languages to configure it

             Anakin Childerhose - Savoir Faire Linux Inc.

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
    function signature help   multicursors             window management

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

   ```vim
   edit scp://host/remote-file
   ```

   src/poky/scripts/runqemu

    goto declaration  - gD
    goto definition   - gd
    goto references   - *, g*, #, g#,
    regex searching   - :vim, :lvim, :grep, :lgrep, :cnext, :cprev, :copen, :cclose
    completion        - i_CTRL-N, i_CTRL-X and friends :help ins-completion
    formatting        - =, >, <, gq, gw, gu, gU, :retab, :left, :right, :center, :set formatprg?
    folding           - zm, zM, zr, zR, zo, zO, zc, zC (see :h folding)
    linting*          - :compiler ruff
    diagnostics       - :cc, :copen, :cclose, :cnext, :cprev

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

/^\s*{cE	vim.keymap.set(A€kb€kb)

    put that into register q with "qy and play it back with 14@q

   ```lua
   { 'n', 'gD',         b.declaration,                 'LSP: Go to declaration' },
   { 'n', 'gd',         b.definition,                  'LSP: Go to definition' },
   { 'n', 'gr',         builtin.lsp_references,        'LSP: Get references in Telescope window' },
   { 'n', 'gt',         b.type_definition,             'LSP: Go to type definition' },
   { 'n', 'gtt',        builtin.lsp_type_definitions,  'LSP: Go to type definition' },
   { 'n', 'gi',         builtin.lsp_implementations,   'LSP: Go to implementation' },
   { 'n', '<leader>r',  b.rename,                      'LSP: Project global rename' },
   { 'n', '<leader>fs', builtin.lsp_document_symbols,  'LSP: document symbols in Telescope window' },
   { 'n', '<leader>ws', builtin.lsp_workspace_symbols, 'LSP: workspace symbols in Telescope window' },
   { 'n', '<leader>ic', builtin.lsp_incoming_calls,    'LSP: incoming calls in Telescope window' },
   { 'n', '<leader>oc', builtin.lsp_outgoing_calls,    'LSP: outgoing calls in Telescope window' },
   { 'n', 'K',     function() b.hover({border = 'rounded'}) end,          'LSP: Hover documentation' },
   { 'n', '<C-k>', function() b.signature_help({border = 'rounded'}) end, 'LSP: Signature help' },
   { 'i', '<C-s>', function() b.signature_help({border = 'rounded'}) end, 'LSP: Signature help' },
   ```

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
    hover menu
    list file symbols
    list workspace symbols
    refactoring
    renaming

  BUT NOT LANGUAGE SERVERS ARE CREATED EQUAL

<!-- }}} -->

# <!-- {{{ -->    LSP CONFIGURATION

   ```sh
   which rust-analyzer # make sure language server is on your $PATH
   ```
   ```lua
   -- ~/.config/nvim/init.lua
   vim.lsp.config.my_rust_config = {
     cmd = { 'rust-analyzer' },
     filetypes = { 'rust' },
     root_markers = { '.git', 'Cargo.toml' },
   }
   vim.lsp.enable('my_rust_config')
   vim.diagnostic.config({ virtual_text = true }) -- for displaying diagnostics inline

   vim.api.nvim_create_autocmd('LspAttach', {
     callback = function(ev)
       local b = vim.lsp.buf
       local set = vim.keymap.set
       local opts = { buffer = ev.buf, noremap = true, silent = true }

       set('n', 'gD',        b.declaration,      opts)
       set('n', 'gd',        b.definition,       opts)
       set('n', 'gr',        b.references,       opts)
       set('n', 'gt',        b.type_definition,  opts)
       set('n', 'gi',        b.implementation,   opts)
       set('n', '<space>fs', b.document_symbol,  opts)
       set('n', '<space>ws', b.workspace_symbol, opts)
       set('n', '<space>ic', b.incoming_calls,   opts)
       set('n', '<space>oc', b.outgoing_calls,   opts)
       set('n', 'K',     function() b.hover({border = 'rounded'}) end,          opts)
       set('n', '<C-k>', function() b.signature_help({border = 'rounded'}) end, opts)
       set('i', '<C-s>', function() b.signature_help({border = 'rounded'}) end, opts)
     end,
   })
   ```
   ```vim
   checkhealth vim.lsp " verify with checkhealth

   set signcolumn=number " nice to have
   ```
   src/ginko/ginko_ls/src/main.rs

<!-- }}} -->

# <!-- {{{ -->    PLUGINS

  Neovim and Vim support plugins out of the box and can be installed in Vim's
  runtime path:

    ~/.config/nvim/pack/<plugin>/{start,opt}/<plugin>

   ```vim
   :scriptnames
   ```

  The default distributed plugins, your config, and other plugins all abide by
  the same structure as explained in the 'runtimepath' (see :help rtp)

   ```vim
   :echo substitute(&rtp, ',', '\n', 'g')
   ```

<!-- }}} -->

# <!-- {{{ -->    PLUGIN MANAGERS

  Most of the Neovim community chooses to use plugin
      managers to install their pluggins

      https://github.com/folke/lazy.nvim
      https://github.com/wbthomason/packer.nvim.git

  lazy.nvim has kind of became the defacto plugin
          manager from what I can tell

<!-- }}} -->

# <!-- {{{ -->    PLUGINS

   Must have plugins:

     https://github.com/folke/lazydev.nvim - for neovim aware lua features
     https://github.com/mbbill/undotree - for viewing undos in a tree
     https://github.com/neovim/nvim-lspconfig - default configs for LSPs
     https://github.com/numToStr/Comment.nvim - smart commenting
     https://github.com/nvim-telescope/telescope.nvim - fuzzy finding UI
     https://github.com/nvim-treesitter/nvim-treesitter - analyzer for highlighting and more
     https://github.com/tpope/vim-fugitive - git integration
     https://github.com/github/copilot.vim - copilot
     https://github.com/olimorris/codecompanion.nvim - complete ai integration

<!-- }}} -->

# <!-- {{{ --> NOTES

- features that other editors don't have:
  - macros
  - registers
  - autocmds

<!-- }}} -->
