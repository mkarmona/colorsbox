" -----------------------------------------------------------------------------
" File: colorsbox.vim
" -----------------------------------------------------------------------------

let g:airline#themes#colorsbox#palette = {}

function! airline#themes#colorsbox#refresh()

  let M0 = airline#themes#get_highlight('Identifier')
  let modified_group = [M0[0], '', M0[2], '', '']
  let warning_group = airline#themes#get_highlight2(['DiffChange', 'bg'], ['Question', 'fg'])

  "let s:N1 = airline#themes#get_highlight2(['DiffChange', 'bg'], ['DiffChange', 'fg'])
  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Normal', 'fg'])
  let s:N2 = s:N1
  let s:N3 = s:N1
  "let s:N3 = airline#themes#get_highlight2(['Normal', 'bg'], ['StatusLineNc', 'bg'])
  "let s:N3 = airline#themes#get_highlight2(['Normal', 'bg'], ['DiffChange', 'fg'])
  let g:airline#themes#colorsbox#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#colorsbox#palette.normal_modified = { 'airline_c': modified_group }
  let g:airline#themes#colorsbox#palette.normal.airline_warning = warning_group
  let g:airline#themes#colorsbox#palette.normal_modified.airline_warning = warning_group

  let s:I1 = s:N1
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#colorsbox#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#colorsbox#palette.insert_modified = g:airline#themes#colorsbox#palette.normal_modified
  let g:airline#themes#colorsbox#palette.insert.airline_warning = g:airline#themes#colorsbox#palette.normal.airline_warning
  let g:airline#themes#colorsbox#palette.insert_modified.airline_warning = g:airline#themes#colorsbox#palette.normal_modified.airline_warning

  let s:R1 = s:I1
  let s:R2 = s:I2
  let s:R3 = s:I3
  let g:airline#themes#colorsbox#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#colorsbox#palette.replace_modified = g:airline#themes#colorsbox#palette.normal_modified
  let g:airline#themes#colorsbox#palette.replace.airline_warning = g:airline#themes#colorsbox#palette.normal.airline_warning
  let g:airline#themes#colorsbox#palette.replace_modified.airline_warning = g:airline#themes#colorsbox#palette.normal_modified.airline_warning

  let s:V1 = s:N1
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#colorsbox#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#colorsbox#palette.visual_modified = g:airline#themes#colorsbox#palette.normal_modified
  let g:airline#themes#colorsbox#palette.visual.airline_warning = g:airline#themes#colorsbox#palette.normal.airline_warning
  let g:airline#themes#colorsbox#palette.visual_modified.airline_warning = g:airline#themes#colorsbox#palette.normal_modified.airline_warning

  let s:IA = airline#themes#get_highlight2(['TabLine', 'fg'], ['CursorLine', 'bg'])
  let g:airline#themes#colorsbox#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#colorsbox#palette.inactive_modified = { 'airline_c': modified_group }

  let accents_group = s:N1
  let g:airline#themes#colorsbox#palette.accents = { 'red': accents_group }

  let s:TF = s:N1
  let g:airline#themes#colorsbox#palette.tabline = {
    \ 'airline_tab':  s:N2,
    \ 'airline_tabsel':  s:N1,
    \ 'airline_tabtype':  s:V1,
    \ 'airline_tabfill':  s:TF,
    \ 'airline_tabhid':  s:IA,
    \ 'airline_tabmod':  s:I1
    \ }

endfunction

call airline#themes#colorsbox#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
