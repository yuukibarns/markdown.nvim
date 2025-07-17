((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathring{[A-Z]}")
 (#set-pairs! @conceal conceal
   "\\mathring{A}" "Å"
   "\\mathring{B}" "B̊"
   "\\mathring{C}" "C̊"
   "\\mathring{D}" "D̊"
   "\\mathring{E}" "E̊"
   "\\mathring{F}" "F̊"
   "\\mathring{G}" "G̊"
   "\\mathring{H}" "H̊"
   "\\mathring{I}" "I̊"
   "\\mathring{J}" "J̊"
   "\\mathring{K}" "K̊"
   "\\mathring{L}" "L̊"
   "\\mathring{M}" "M̊"
   "\\mathring{N}" "N̊"
   "\\mathring{O}" "O̊"
   "\\mathring{P}" "P̊"
   "\\mathring{Q}" "Q̊"
   "\\mathring{R}" "R̊"
   "\\mathring{S}" "S̊"
   "\\mathring{T}" "T̊"
   "\\mathring{U}" "Ů"
   "\\mathring{V}" "V̊"
   "\\mathring{W}" "W̊"
   "\\mathring{X}" "X̊"
   "\\mathring{Y}" "Y̊"
   "\\mathring{Z}" "Z̊"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathring{\\mathbf{[A-Z]}}")
 (#set! priority 101)
 (#set-pairs! @conceal conceal
   "\\mathring{\\mathbf{A}}" "𝐀̊"
   "\\mathring{\\mathbf{B}}" "𝐁̊"
   "\\mathring{\\mathbf{C}}" "𝐂̊"
   "\\mathring{\\mathbf{D}}" "𝐃̊"
   "\\mathring{\\mathbf{E}}" "𝐄̊"
   "\\mathring{\\mathbf{F}}" "𝐅̊"
   "\\mathring{\\mathbf{G}}" "𝐆̊"
   "\\mathring{\\mathbf{H}}" "𝐇̊"
   "\\mathring{\\mathbf{I}}" "𝐈̊"
   "\\mathring{\\mathbf{J}}" "𝐉̊"
   "\\mathring{\\mathbf{K}}" "𝐊̊"
   "\\mathring{\\mathbf{L}}" "𝐋̊"
   "\\mathring{\\mathbf{M}}" "𝐌̊"
   "\\mathring{\\mathbf{N}}" "𝐍̊"
   "\\mathring{\\mathbf{O}}" "𝐎̊"
   "\\mathring{\\mathbf{P}}" "𝐏̊"
   "\\mathring{\\mathbf{Q}}" "𝐐̊"
   "\\mathring{\\mathbf{R}}" "𝐑̊"
   "\\mathring{\\mathbf{S}}" "𝐒̊"
   "\\mathring{\\mathbf{T}}" "𝐓̊"
   "\\mathring{\\mathbf{U}}" "𝐔̊"
   "\\mathring{\\mathbf{V}}" "𝐕̊"
   "\\mathring{\\mathbf{W}}" "𝐖̊"
   "\\mathring{\\mathbf{X}}" "𝐗̊"
   "\\mathring{\\mathbf{Y}}" "𝐘̊"
   "\\mathring{\\mathbf{Z}}" "𝐙̊"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathring{\\mathbb{[A-Z]}}")
 (#set! priority 101)
 (#set-pairs! @conceal conceal
   "\\mathring{\\mathbb{A}}" "𝔸̊"
   "\\mathring{\\mathbb{B}}" "𝔹̊"
   "\\mathring{\\mathbb{C}}" "ℂ̊"
   "\\mathring{\\mathbb{D}}" "𝔻̊"
   "\\mathring{\\mathbb{E}}" "𝔼̊"
   "\\mathring{\\mathbb{F}}" "𝔽̊"
   "\\mathring{\\mathbb{G}}" "𝔾̊"
   "\\mathring{\\mathbb{H}}" "ℍ̊"
   "\\mathring{\\mathbb{I}}" "𝕀̊"
   "\\mathring{\\mathbb{J}}" "𝕁̊"
   "\\mathring{\\mathbb{K}}" "𝕂̊"
   "\\mathring{\\mathbb{L}}" "𝕃̊"
   "\\mathring{\\mathbb{M}}" "𝕄̊"
   "\\mathring{\\mathbb{N}}" "ℕ̊"
   "\\mathring{\\mathbb{O}}" "𝕆̊"
   "\\mathring{\\mathbb{P}}" "ℙ̊"
   "\\mathring{\\mathbb{Q}}" "ℚ̊"
   "\\mathring{\\mathbb{R}}" "ℝ̊"
   "\\mathring{\\mathbb{S}}" "𝕊̊"
   "\\mathring{\\mathbb{T}}" "𝕋̊"
   "\\mathring{\\mathbb{U}}" "𝕌̊"
   "\\mathring{\\mathbb{V}}" "𝕍̊"
   "\\mathring{\\mathbb{W}}" "𝕎̊"
   "\\mathring{\\mathbb{X}}" "𝕏̊"
   "\\mathring{\\mathbb{Y}}" "𝕐̊"
   "\\mathring{\\mathbb{Z}}" "ℤ̊"))
