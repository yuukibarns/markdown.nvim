(generic_command
  command: (command_name) @cmd
  (#any-of? @cmd "\\emph" "\\textit" "\\textbf")
  (#set! priority 101)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#any-of? @_cmd "\\emph" "\\textit" "\\textbf")
  arg: (curly_group
    "{" @open)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#any-of? @_cmd "\\emph" "\\textit" "\\textbf")
  arg: (curly_group
    "}" @close)
  (#set! conceal ""))

(generic_command
  command: ((command_name) @cmd
    (#eq? @cmd "\\mathbf"))
  (#has-ancestor? @cmd math_environment inline_formula displayed_equation)
  (#set! priority 101)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\mathbf")
  arg: (curly_group
    "{" @open)
  (#has-ancestor? @open math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\mathbf")
  arg: (curly_group
    "}" @close)
  (#has-ancestor? @close math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: ((command_name) @cmd
    (#eq? @cmd "\\bm"))
  (#has-ancestor? @cmd math_environment inline_formula displayed_equation)
  (#set! priority 101)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\bm")
  arg: (curly_group
    "{" @open)
  (#has-ancestor? @open math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\bm")
  arg: (curly_group
    "}" @close)
  (#has-ancestor? @close math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: ((command_name) @cmd
    (#eq? @cmd "\\mathrm"))
  (#has-ancestor? @cmd math_environment inline_formula displayed_equation)
  (#set! priority 101)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\mathrm")
  arg: (curly_group
    "{" @open)
  (#has-ancestor? @open math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\mathrm")
  arg: (curly_group
    "}" @close)
  (#has-ancestor? @close math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(text_mode
  content: (curly_group
    "{" @open)
  (#has-ancestor? @open math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(text_mode
  content: (curly_group
    "}" @close)
  (#has-ancestor? @close math_environment inline_formula displayed_equation)
  (#set! conceal ""))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathbb{[A-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathbb{A}" "𝔸"
  "\\mathbb{B}" "𝔹"
  "\\mathbb{C}" "ℂ"
  "\\mathbb{D}" "𝔻"
  "\\mathbb{E}" "𝔼"
  "\\mathbb{F}" "𝔽"
  "\\mathbb{G}" "𝔾"
  "\\mathbb{H}" "ℍ"
  "\\mathbb{I}" "𝕀"
  "\\mathbb{J}" "𝕁"
  "\\mathbb{K}" "𝕂"
  "\\mathbb{L}" "𝕃"
  "\\mathbb{M}" "𝕄"
  "\\mathbb{N}" "ℕ"
  "\\mathbb{O}" "𝕆"
  "\\mathbb{P}" "ℙ"
  "\\mathbb{Q}" "ℚ"
  "\\mathbb{R}" "ℝ"
  "\\mathbb{S}" "𝕊"
  "\\mathbb{T}" "𝕋"
  "\\mathbb{U}" "𝕌"
  "\\mathbb{V}" "𝕍"
  "\\mathbb{W}" "𝕎"
  "\\mathbb{X}" "𝕏"
  "\\mathbb{Y}" "𝕐"
  "\\mathbb{Z}" "ℤ"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathcal{[A-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathcal{A}" "𝓐"
  "\\mathcal{B}" "𝓑"
  "\\mathcal{C}" "𝓒"
  "\\mathcal{D}" "𝓓"
  "\\mathcal{E}" "𝓔"
  "\\mathcal{F}" "𝓕"
  "\\mathcal{G}" "𝓖"
  "\\mathcal{H}" "𝓗"
  "\\mathcal{I}" "𝓘"
  "\\mathcal{J}" "𝓙"
  "\\mathcal{K}" "𝓚"
  "\\mathcal{L}" "𝓛"
  "\\mathcal{M}" "𝓜"
  "\\mathcal{N}" "𝓝"
  "\\mathcal{O}" "𝓞"
  "\\mathcal{P}" "𝓟"
  "\\mathcal{Q}" "𝓠"
  "\\mathcal{R}" "𝓡"
  "\\mathcal{S}" "𝓢"
  "\\mathcal{T}" "𝓣"
  "\\mathcal{U}" "𝓤"
  "\\mathcal{V}" "𝓥"
  "\\mathcal{W}" "𝓦"
  "\\mathcal{X}" "𝓧"
  "\\mathcal{Y}" "𝓨"
  "\\mathcal{Z}" "𝓩"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathscr{A-Z}")
 (#set-pairs! @conceal conceal
  "\\mathscr{A}" "𝓐"
  "\\mathscr{B}" "𝓑"
  "\\mathscr{C}" "𝓒"
  "\\mathscr{D}" "𝓓"
  "\\mathscr{E}" "𝓔"
  "\\mathscr{F}" "𝓕"
  "\\mathscr{G}" "𝓖"
  "\\mathscr{H}" "𝓗"
  "\\mathscr{I}" "𝓘"
  "\\mathscr{J}" "𝓙"
  "\\mathscr{K}" "𝓚"
  "\\mathscr{L}" "𝓛"
  "\\mathscr{M}" "𝓜"
  "\\mathscr{N}" "𝓝"
  "\\mathscr{O}" "𝓞"
  "\\mathscr{P}" "𝓟"
  "\\mathscr{Q}" "𝓠"
  "\\mathscr{R}" "𝓡"
  "\\mathscr{S}" "𝓢"
  "\\mathscr{T}" "𝓣"
  "\\mathscr{U}" "𝓤"
  "\\mathscr{V}" "𝓥"
  "\\mathscr{W}" "𝓦"
  "\\mathscr{X}" "𝓧"
  "\\mathscr{Y}" "𝓨"
  "\\mathscr{Z}" "𝓩"))

((generic_command
   command: (command_name)
   arg: (curly_group)) @conceal
 (#lua-match? @conceal "\\mathfrak{[a-zA-Z]}")
 (#set-pairs! @conceal conceal
  "\\mathfrak{a}" "𝔞"
  "\\mathfrak{b}" "𝔟"
  "\\mathfrak{c}" "𝔠"
  "\\mathfrak{d}" "𝔡"
  "\\mathfrak{e}" "𝔢"
  "\\mathfrak{f}" "𝔣"
  "\\mathfrak{g}" "𝔤"
  "\\mathfrak{h}" "𝔥"
  "\\mathfrak{i}" "𝔦"
  "\\mathfrak{j}" "𝔧"
  "\\mathfrak{k}" "𝔨"
  "\\mathfrak{l}" "𝔩"
  "\\mathfrak{m}" "𝔪"
  "\\mathfrak{n}" "𝔫"
  "\\mathfrak{o}" "𝔬"
  "\\mathfrak{p}" "𝔭"
  "\\mathfrak{q}" "𝔮"
  "\\mathfrak{r}" "𝔯"
  "\\mathfrak{s}" "𝔰"
  "\\mathfrak{t}" "𝔱"
  "\\mathfrak{u}" "𝔲"
  "\\mathfrak{v}" "𝔳"
  "\\mathfrak{w}" "𝔴"
  "\\mathfrak{x}" "𝔵"
  "\\mathfrak{y}" "𝔶"
  "\\mathfrak{z}" "𝔷"
  "\\mathfrak{A}" "𝔄"
  "\\mathfrak{B}" "𝔅"
  "\\mathfrak{C}" "ℭ"
  "\\mathfrak{D}" "𝔇"
  "\\mathfrak{E}" "𝔈"
  "\\mathfrak{F}" "𝔉"
  "\\mathfrak{G}" "𝔊"
  "\\mathfrak{H}" "ℌ"
  "\\mathfrak{I}" "ℑ"
  "\\mathfrak{J}" "𝔍"
  "\\mathfrak{K}" "𝔎"
  "\\mathfrak{L}" "𝔏"
  "\\mathfrak{M}" "𝔐"
  "\\mathfrak{N}" "𝔑"
  "\\mathfrak{O}" "𝔒"
  "\\mathfrak{P}" "𝔓"
  "\\mathfrak{Q}" "𝔔"
  "\\mathfrak{R}" "ℜ"
  "\\mathfrak{S}" "𝔖"
  "\\mathfrak{T}" "𝔗"
  "\\mathfrak{U}" "𝔘"
  "\\mathfrak{V}" "𝔙"
  "\\mathfrak{W}" "𝔚"
  "\\mathfrak{X}" "𝔛"
  "\\mathfrak{Y}" "𝔜"
  "\\mathfrak{Z}" "ℨ"))

; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\mathrm{[a-zA-Z]}")
;  (#set-pairs! @conceal conceal
;   "\\mathrm{a}" "a"
;   "\\mathrm{b}" "b"
;   "\\mathrm{c}" "c"
;   "\\mathrm{d}" "d"
;   "\\mathrm{e}" "e"
;   "\\mathrm{f}" "f"
;   "\\mathrm{g}" "g"
;   "\\mathrm{h}" "h"
;   "\\mathrm{i}" "i"
;   "\\mathrm{j}" "j"
;   "\\mathrm{k}" "k"
;   "\\mathrm{l}" "l"
;   "\\mathrm{m}" "m"
;   "\\mathrm{n}" "n"
;   "\\mathrm{o}" "o"
;   "\\mathrm{p}" "p"
;   "\\mathrm{q}" "q"
;   "\\mathrm{r}" "r"
;   "\\mathrm{s}" "s"
;   "\\mathrm{t}" "t"
;   "\\mathrm{u}" "u"
;   "\\mathrm{v}" "v"
;   "\\mathrm{w}" "w"
;   "\\mathrm{x}" "x"
;   "\\mathrm{y}" "y"
;   "\\mathrm{z}" "z"
;   "\\mathrm{A}" "A"
;   "\\mathrm{B}" "B"
;   "\\mathrm{C}" "C"
;   "\\mathrm{D}" "D"
;   "\\mathrm{E}" "E"
;   "\\mathrm{F}" "F"
;   "\\mathrm{G}" "G"
;   "\\mathrm{H}" "H"
;   "\\mathrm{I}" "I"
;   "\\mathrm{J}" "J"
;   "\\mathrm{K}" "K"
;   "\\mathrm{L}" "L"
;   "\\mathrm{M}" "M"
;   "\\mathrm{N}" "N"
;   "\\mathrm{O}" "O"
;   "\\mathrm{P}" "P"
;   "\\mathrm{Q}" "Q"
;   "\\mathrm{R}" "R"
;   "\\mathrm{S}" "S"
;   "\\mathrm{T}" "T"
;   "\\mathrm{U}" "U"
;   "\\mathrm{V}" "V"
;   "\\mathrm{W}" "W"
;   "\\mathrm{X}" "X"
;   "\\mathrm{Y}" "Y"
;   "\\mathrm{Z}" "Z"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\mathbf{[a-zA-Z]}")
;  (#set-pairs! @conceal conceal
;   "\\mathbf{a}" "𝐚"
;   "\\mathbf{b}" "𝐛"
;   "\\mathbf{c}" "𝐜"
;   "\\mathbf{d}" "𝐝"
;   "\\mathbf{e}" "𝐞"
;   "\\mathbf{f}" "𝐟"
;   "\\mathbf{g}" "𝐠"
;   "\\mathbf{h}" "𝐡"
;   "\\mathbf{i}" "𝐢"
;   "\\mathbf{j}" "𝐣"
;   "\\mathbf{k}" "𝐤"
;   "\\mathbf{l}" "𝐥"
;   "\\mathbf{m}" "𝐦"
;   "\\mathbf{n}" "𝐧"
;   "\\mathbf{o}" "𝐨"
;   "\\mathbf{p}" "𝐩"
;   "\\mathbf{q}" "𝐪"
;   "\\mathbf{r}" "𝐫"
;   "\\mathbf{s}" "𝐬"
;   "\\mathbf{t}" "𝐭"
;   "\\mathbf{u}" "𝐮"
;   "\\mathbf{v}" "𝐯"
;   "\\mathbf{w}" "𝐰"
;   "\\mathbf{x}" "𝐱"
;   "\\mathbf{y}" "𝐲"
;   "\\mathbf{z}" "𝐳"
;   "\\mathbf{A}" "𝐀"
;   "\\mathbf{B}" "𝐁"
;   "\\mathbf{C}" "𝐂"
;   "\\mathbf{D}" "𝐃"
;   "\\mathbf{E}" "𝐄"
;   "\\mathbf{F}" "𝐅"
;   "\\mathbf{G}" "𝐆"
;   "\\mathbf{H}" "𝐇"
;   "\\mathbf{I}" "𝐈"
;   "\\mathbf{J}" "𝐉"
;   "\\mathbf{K}" "𝐊"
;   "\\mathbf{L}" "𝐋"
;   "\\mathbf{M}" "𝐌"
;   "\\mathbf{N}" "𝐍"
;   "\\mathbf{O}" "𝐎"
;   "\\mathbf{P}" "𝐏"
;   "\\mathbf{Q}" "𝐐"
;   "\\mathbf{R}" "𝐑"
;   "\\mathbf{S}" "𝐒"
;   "\\mathbf{T}" "𝐓"
;   "\\mathbf{U}" "𝐔"
;   "\\mathbf{V}" "𝐕"
;   "\\mathbf{W}" "𝐖"
;   "\\mathbf{X}" "𝐗"
;   "\\mathbf{Y}" "𝐘"
;   "\\mathbf{Z}" "𝐙"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\bm{[a-zA-Z]}")
;  (#set-pairs! @conceal conceal
;   "\\bm{a}" "𝐚"
;   "\\bm{b}" "𝐛"
;   "\\bm{c}" "𝐜"
;   "\\bm{d}" "𝐝"
;   "\\bm{e}" "𝐞"
;   "\\bm{f}" "𝐟"
;   "\\bm{g}" "𝐠"
;   "\\bm{h}" "𝐡"
;   "\\bm{i}" "𝐢"
;   "\\bm{j}" "𝐣"
;   "\\bm{k}" "𝐤"
;   "\\bm{l}" "𝐥"
;   "\\bm{m}" "𝐦"
;   "\\bm{n}" "𝐧"
;   "\\bm{o}" "𝐨"
;   "\\bm{p}" "𝐩"
;   "\\bm{q}" "𝐪"
;   "\\bm{r}" "𝐫"
;   "\\bm{s}" "𝐬"
;   "\\bm{t}" "𝐭"
;   "\\bm{u}" "𝐮"
;   "\\bm{v}" "𝐯"
;   "\\bm{w}" "𝐰"
;   "\\bm{x}" "𝐱"
;   "\\bm{y}" "𝐲"
;   "\\bm{z}" "𝐳"
;   "\\bm{A}" "𝐀"
;   "\\bm{B}" "𝐁"
;   "\\bm{C}" "𝐂"
;   "\\bm{D}" "𝐃"
;   "\\bm{E}" "𝐄"
;   "\\bm{F}" "𝐅"
;   "\\bm{G}" "𝐆"
;   "\\bm{H}" "𝐇"
;   "\\bm{I}" "𝐈"
;   "\\bm{J}" "𝐉"
;   "\\bm{K}" "𝐊"
;   "\\bm{L}" "𝐋"
;   "\\bm{M}" "𝐌"
;   "\\bm{N}" "𝐍"
;   "\\bm{O}" "𝐎"
;   "\\bm{P}" "𝐏"
;   "\\bm{Q}" "𝐐"
;   "\\bm{R}" "𝐑"
;   "\\bm{S}" "𝐒"
;   "\\bm{T}" "𝐓"
;   "\\bm{U}" "𝐔"
;   "\\bm{V}" "𝐕"
;   "\\bm{W}" "𝐖"
;   "\\bm{X}" "𝐗"
;   "\\bm{Y}" "𝐘"
;   "\\bm{Z}" "𝐙"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\mathsf{[a-zA-Z]}")
;  (#set-pairs! @conceal conceal
;   "\\mathsf{a}" "𝖺"
;   "\\mathsf{b}" "𝖻"
;   "\\mathsf{c}" "𝖼"
;   "\\mathsf{d}" "𝖽"
;   "\\mathsf{e}" "𝖾"
;   "\\mathsf{f}" "𝖿"
;   "\\mathsf{g}" "𝗀"
;   "\\mathsf{h}" "𝗁"
;   "\\mathsf{i}" "𝗂"
;   "\\mathsf{j}" "𝗃"
;   "\\mathsf{k}" "𝗄"
;   "\\mathsf{l}" "𝗅"
;   "\\mathsf{m}" "𝗆"
;   "\\mathsf{n}" "𝗇"
;   "\\mathsf{o}" "𝗈"
;   "\\mathsf{p}" "𝗉"
;   "\\mathsf{q}" "𝗊"
;   "\\mathsf{r}" "𝗋"
;   "\\mathsf{s}" "𝗌"
;   "\\mathsf{t}" "𝗍"
;   "\\mathsf{u}" "𝗎"
;   "\\mathsf{v}" "𝗏"
;   "\\mathsf{w}" "𝗐"
;   "\\mathsf{x}" "𝗑"
;   "\\mathsf{y}" "𝗒"
;   "\\mathsf{z}" "𝗓"
;   "\\mathsf{A}" "𝖠"
;   "\\mathsf{B}" "𝖡"
;   "\\mathsf{C}" "𝖢"
;   "\\mathsf{D}" "𝖣"
;   "\\mathsf{E}" "𝖤"
;   "\\mathsf{F}" "𝖥"
;   "\\mathsf{G}" "𝖦"
;   "\\mathsf{H}" "𝖧"
;   "\\mathsf{I}" "𝖨"
;   "\\mathsf{J}" "𝖩"
;   "\\mathsf{K}" "𝖪"
;   "\\mathsf{L}" "𝖫"
;   "\\mathsf{M}" "𝖬"
;   "\\mathsf{N}" "𝖭"
;   "\\mathsf{O}" "𝖮"
;   "\\mathsf{P}" "𝖯"
;   "\\mathsf{Q}" "𝖰"
;   "\\mathsf{R}" "𝖱"
;   "\\mathsf{S}" "𝖲"
;   "\\mathsf{T}" "𝖳"
;   "\\mathsf{U}" "𝖴"
;   "\\mathsf{V}" "𝖵"
;   "\\mathsf{W}" "𝖶"
;   "\\mathsf{X}" "𝖷"
;   "\\mathsf{Y}" "𝖸"
;   "\\mathsf{Z}" "𝖹"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\frac{[123456789]}{[2345678910]}" )
;  (#set-pairs! @conceal conceal 
;   "\\frac{1}{2}" "½"
;    "\\frac{1}{3}" "⅓"
;    "\\frac{1}{4}" "¼"
;    "\\frac{1}{5}" "⅕"
;    "\\frac{1}{6}" "⅙"
;    "\\frac{1}{7}" "⅐"
;    "\\frac{1}{8}" "⅛"
;    "\\frac{1}{9}" "⅑"
;    "\\frac{1}{10}" "⅒"
;    "\\frac{2}{3}" "⅔"
;    "\\frac{2}{5}" "⅖"
;    "\\frac{3}{4}" "¾"
;    "\\frac{3}{5}" "⅗"
;    "\\frac{3}{8}" "⅜"
;    "\\frac{4}{5}" "⅘"
;    "\\frac{5}{6}" "⅚"
;    "\\frac{5}{8}" "⅝"
;    "\\frac{7}{8}" "⅞"
;   ))
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\`{[aeiouyAEIOUY]}")
;  (#set-pairs! @conceal conceal
;   "\\`{a}" "à"
;   "\\`{e}" "è"
;   "\\`{i}" "ì"
;   "\\`{o}" "ò"
;   "\\`{u}" "ù"
;   "\\`{y}" "ỳ"
;   "\\`{A}" "À"
;   "\\`{E}" "È"
;   "\\`{I}" "Ì"
;   "\\`{O}" "Ò"
;   "\\`{U}" "Ù"
;   "\\`{Y}" "Ỳ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\'{[acegilnorsuyzACEGILNORSUYZ]}")
;  (#set-pairs! @conceal conceal
;   "\\'{a}" "á"
;   "\\'{c}" "ć"
;   "\\'{e}" "é"
;   "\\'{g}" "ǵ"
;   "\\'{i}" "í"
;   "\\'{l}" "ĺ"
;   "\\'{n}" "ń"
;   "\\'{o}" "ó"
;   "\\'{r}" "ŕ"
;   "\\'{s}" "ś"
;   "\\'{u}" "ú"
;   "\\'{y}" "ý"
;   "\\'{z}" "ź"
;   "\\'{A}" "Á"
;   "\\'{C}" "Ć"
;   "\\'{E}" "É"
;   "\\'{G}" "Ǵ"
;   "\\'{I}" "Í"
;   "\\'{L}" "Ĺ"
;   "\\'{N}" "Ń"
;   "\\'{O}" "Ó"
;   "\\'{R}" "Ŕ"
;   "\\'{S}" "Ś"
;   "\\'{U}" "Ú"
;   "\\'{Y}" "Ý"
;   "\\'{Z}" "Ź"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\^{[aceghijlosuwACEGILOSUW]}")
;  (#set-pairs! @conceal conceal
;   "\\^{a}" "â"
;   "\\^{c}" "ĉ"
;   "\\^{e}" "ê"
;   "\\^{g}" "ĝ"
;   "\\^{h}" "ĥ"
;   "\\^{i}" "î"
;   "\\^{j}" "ĵ"
;   "\\^{l}" "ľ"
;   "\\^{n}" "ň"
;   "\\^{o}" "ô"
;   "\\^{s}" "ŝ"
;   "\\^{u}" "û"
;   "\\^{w}" "ŵ"
;   "\\^{A}" "Â"
;   "\\^{C}" "Ĉ"
;   "\\^{E}" "Ê"
;   "\\^{G}" "Ĝ"
;   "\\^{I}" "Î"
;   "\\^{L}" "Ľ"
;   "\\^{O}" "Ô"
;   "\\^{S}" "Ŝ"
;   "\\^{U}" "Û"
;   "\\^{W}" "Ŵ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\\"{[aeiouyAEIOUY]}")
;  (#set-pairs! @conceal conceal
;   "\\\"{a}" "ä"
;   "\\\"{e}" "ë"
;   "\\\"{i}" "ï"
;   "\\\"{o}" "ö"
;   "\\\"{u}" "ü"
;   "\\\"{y}" "ÿ"
;   "\\\"{A}" "Ä"
;   "\\\"{E}" "Ë"
;   "\\\"{I}" "Ï"
;   "\\\"{O}" "Ö"
;   "\\\"{U}" "Ü"
;   "\\\"{Y}" "Ÿ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\%{[aeinouyAEINOUY]}")
;  (#set-pairs! @conceal conceal
;   "\\%{a}" "ã"
;   "\\%{e}" "ẽ"
;   "\\%{i}" "ĩ"
;   "\\%{n}" "ñ"
;   "\\%{o}" "õ"
;   "\\%{u}" "ũ"
;   "\\%{y}" "ỹ"
;   "\\%{A}" "Ã"
;   "\\%{E}" "Ẽ"
;   "\\%{I}" "Ĩ"
;   "\\%{N}" "Ñ"
;   "\\%{O}" "Õ"
;   "\\%{U}" "Ũ"
;   "\\%{Y}" "Ỹ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\\.{[acegimoryACEGIMORY]}")
;  (#set-pairs! @conceal conceal
;   "\\\.{a}" "ȧ"
;   "\\\.{c}" "ċ"
;   "\\\.{e}" "ė"
;   "\\\.{g}" "ġ"
;   "\\\.{i}" "İ"
;   "\\\.{m}" "ṁ"
;   "\\\.{o}" "ȯ"
;   "\\\.{r}" "ṙ"
;   "\\\.{y}" "ẏ"
;   "\\\.{A}" "Ȧ"
;   "\\\.{C}" "Ċ"
;   "\\\.{E}" "Ė"
;   "\\\.{G}" "Ġ"
;   "\\\.{I}" "İ"
;   "\\\.{M}" "Ṁ"
;   "\\\.{O}" "Ȯ"
;   "\\\.{R}" "Ṙ"
;   "\\\.{Y}" "Ẏ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\={[aeiouAEIOU]}")
;  (#set-pairs! @conceal conceal
;   "\\={a}" "ā"
;   "\\={e}" "ē"
;   "\\={i}" "ī"
;   "\\={o}" "ō"
;   "\\={u}" "ū"
;   "\\={A}" "Ā"
;   "\\={E}" "Ē"
;   "\\={I}" "Ī"
;   "\\={O}" "Ō"
;   "\\={U}" "Ū"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\c{[cegklnrstCEGKLNRST]}")
;  (#set-pairs! @conceal conceal
;   "\\c{c}" "ç"
;   "\\c{e}" "ę"
;   "\\c{g}" "ğ"
;   "\\c{k}" "ķ"
;   "\\c{l}" "ļ"
;   "\\c{n}" "ņ"
;   "\\c{r}" "ŗ"
;   "\\c{s}" "ş"
;   "\\c{t}" "ţ"
;   "\\c{C}" "Ç"
;   "\\c{E}" "Ę"
;   "\\c{G}" "Ğ"
;   "\\c{K}" "Ķ"
;   "\\c{L}" "Ļ"
;   "\\c{N}" "Ņ"
;   "\\c{R}" "Ŗ"
;   "\\c{S}" "Ş"
;   "\\c{T}" "Ţ"))
;
; ((generic_command
;    command : (command_name)
;    arg : (curly_group)) @conceal
;  (#lua-match? @conceal "\\H{[ouOU]}")
;  (#set-pairs! @conceal conceal
;   "\\H{o}" "ő"
;   "\\H{u}" "ű"
;   "\\H{O}" "Ő"
;   "\\H{U}" "Ű"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\k{[aeiosuAEIOU]}")
;  (#set-pairs! @conceal conceal
;   "\\k{a}" "ą"
;   "\\k{e}" "ę"
;   "\\k{i}" "į"
;   "\\k{o}" "ǫ"
;   "\\k{s}" "ȿ"
;   "\\k{u}" "ų"
;   "\\k{A}" "Ą"
;   "\\k{E}" "Ę"
;   "\\k{I}" "Į"
;   "\\k{O}" "Ǫ"
;   "\\k{U}" "Ų"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\r{[auAU]}")
;  (#set-pairs! @conceal conceal
;   "\\r{a}" "å"
;   "\\r{u}" "ů"
;   "\\r{A}" "Å"
;   "\\r{U}" "Ů"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\u{[aegiouAEGIOU]}")
;  (#set-pairs! @conceal conceal
;   "\\u{a}" "ă"
;   "\\u{e}" "ĕ"
;   "\\u{g}" "ģ"
;   "\\u{i}" "ĭ"
;   "\\u{o}" "ŏ"
;   "\\u{u}" "ŭ"
;   "\\u{A}" "Ă"
;   "\\u{E}" "Ĕ"
;   "\\u{G}" "Ģ"
;   "\\u{I}" "Ĭ"
;   "\\u{O}" "Ŏ"
;   "\\u{U}" "Ŭ"))
;
; ((generic_command
;    command: (command_name)
;    arg: (curly_group)) @conceal
;  (#lua-match? @conceal "\\v{[acdeghijklnorstuzACDEGHIJKLNORSTUZ]}")
;  (#set-pairs! @conceal conceal
;   "\\v{a}" "ǎ"
;   "\\v{c}" "č"
;   "\\v{d}" "ď"
;   "\\v{e}" "ě"
;   "\\v{g}" "ǧ"
;   "\\v{h}" "ȟ"
;   "\\v{i}" "ǐ"
;   "\\v{j}" "ǰ"
;   "\\v{k}" "ǩ"
;   "\\v{l}" "ľ"
;   "\\v{n}" "ň"
;   "\\v{o}" "ǒ"
;   "\\v{r}" "ř"
;   "\\v{s}" "š"
;   "\\v{t}" "ť"
;   "\\v{u}" "ǔ"
;   "\\v{z}" "ž"
;   "\\v{A}" "Ǎ"
;   "\\v{C}" "Č"
;   "\\v{D}" "Ď"
;   "\\v{E}" "Ě"
;   "\\v{G}" "Ǧ"
;   "\\v{H}" "Ȟ"
;   "\\v{I}" "Ǐ"
;   "\\v{J}" "ǰ"
;   "\\v{K}" "Ǩ"
;   "\\v{L}" "Ľ"
;   "\\v{N}" "Ň"
;   "\\v{O}" "Ǒ"
;   "\\v{R}" "Ř"
;   "\\v{S}" "Š"
;   "\\v{T}" "Ť"
;   "\\v{U}" "Ǔ"
;   "\\v{Z}" "Ž"))
