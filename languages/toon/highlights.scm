; Keys (property names)
(unquoted_key) @property
(field_name) @property

; Values
(null) @constant
(boolean) @boolean
(number) @number

; Strings
(string) @string
(unquoted_string) @string
(escape_sequence) @string.escape
"\"" @punctuation.delimiter

; Array header components
(header
  length: (number) @number)

; Brackets and braces
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

; Delimiters  
(delimiter) @punctuation.delimiter
"," @punctuation.delimiter
"|" @punctuation.delimiter

; Separators
":" @punctuation.delimiter

; List markers
"-" @punctuation.list_marker
