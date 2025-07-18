; Conceal \frac command and brackets to show as numerator/denominator
(generic_command
  command: ((command_name) @cmd
    (#eq? @cmd "\\frac"))
  (#has-ancestor? @cmd math_environment inline_formula displayed_equation)
  (#set! priority 101)
  (#set! conceal "⟮"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\frac")
  arg: (curly_group
    "{" @open1)
  (#has-ancestor? @open1 math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\frac")
  arg: (curly_group
    "}" @close1)
  arg: (curly_group)
  (#has-ancestor? @close1 math_environment inline_formula displayed_equation)
  (#set! conceal "⧸"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\frac")
  arg: (curly_group)
  arg: (curly_group
    "{" @open2)
  (#has-ancestor? @open2 math_environment inline_formula displayed_equation)
  (#set! conceal "⧸"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\frac")
  arg: (curly_group)
  arg: (curly_group
    "}" @close2)
  (#has-ancestor? @close2 math_environment inline_formula displayed_equation)
  (#set! conceal "⟯"))

(generic_command
  command: ((command_name) @cmd
    (#eq? @cmd "\\dfrac"))
  (#has-ancestor? @cmd math_environment inline_formula displayed_equation)
  (#set! priority 101)
  (#set! conceal "⟮"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\dfrac")
  arg: (curly_group
    "{" @open1)
  (#has-ancestor? @open1 math_environment inline_formula displayed_equation)
  (#set! conceal ""))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\dfrac")
  arg: (curly_group
    "}" @close1)
  arg: (curly_group)
  (#has-ancestor? @close1 math_environment inline_formula displayed_equation)
  (#set! conceal "⧸"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\dfrac")
  arg: (curly_group)
  arg: (curly_group
    "{" @open2)
  (#has-ancestor? @open2 math_environment inline_formula displayed_equation)
  (#set! conceal "⧸"))

(generic_command
  command: (command_name) @_cmd
  (#eq? @_cmd "\\dfrac")
  arg: (curly_group)
  arg: (curly_group
    "}" @close2)
  (#has-ancestor? @close2 math_environment inline_formula displayed_equation)
  (#set! conceal "⟯"))
