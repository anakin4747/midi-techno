setlocal spell

augroup AsciidocMidiTechno
  autocmd!
  autocmd BufWritePost <buffer> silent !asciidoctor-pdf midi-techno.adoc &
augroup END
