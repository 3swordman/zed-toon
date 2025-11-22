; TOON Indentation Rules for Zed Editor
; ======================================
; 
; TOON is an indentation-sensitive language where indentation is part of the
; syntax. The external scanner (_indent/_dedent tokens) handles structural
; indentation during parsing. This file provides hints for auto-indentation
; when the user presses Enter.
;
; Strategy:
; 1. Mark pairs that introduce nested structures (@indent)
;    - "key:" followed by nested object → indent next line
;    - "key[N]:" followed by array body → indent next line
; 
; 2. Mark pairs with inline values (@end)
;    - "key: value" with primitive → DON'T indent next line (sibling at same level)
;    - "key[N]: a,b,c" with inline array → DON'T indent next line (sibling at same level)
;
; This prevents the "first line problem" where after typing the first field in
; an object, pressing Enter would incorrectly indent to depth+2 instead of staying
; at the same depth for sibling fields.

; Pairs that introduce nested structures - indent after these
(pair
  key: (_)
  value: (object)
) @indent

(pair
  key: (_)
  (header)
  value: (array_body)
) @indent

; Root-level arrays with body
(array
  (array_body)
) @indent

; Pairs with inline values - don't continue indenting after these
; Next line should be a sibling at the same depth
(pair
  key: (_)
  ":"
  value: (value)
) @end

(pair
  key: (_)
  (header)
  ":"
  value: (inline_values)
) @end

; Closing brackets - end indentation
"]" @end
"}" @end
