# TOON Language Support for Zed

This extension provides complete language support for [TOON (Token-Oriented Object Notation)](https://github.com/toon-format/toon) in the Zed editor.

## Features

- **Syntax Highlighting**: Complete syntax highlighting for all TOON language elements
  - Object keys (both quoted and unquoted) and property names
  - Primitive values: strings, numbers (including scientific notation), booleans, null
  - Array headers with length declarations `[n]` and optional field lists `{field1,field2}`
  - Delimiters (comma, tab, pipe)
  - List markers (hyphens)
  - String escape sequences

- **Bracket Matching**: Automatic matching for `[]`, `{}`, and `""`

- **Auto-Indentation**: Smart indentation following TOON structure
  - Nested objects with proper indentation levels
  - Array bodies (both tabular data and object lists)
  - Automatic dedenting
  - FIXME: When typing a newline after certain lines, the cursor indents to the wrong level

- **Code Outline**: Navigate TOON documents with structure view
  - All object keys visible
  - Works with both simple values and arrays

## About TOON

TOON (Token-Oriented Object Notation) is a line-oriented, indentation-based text format that encodes the JSON data model with explicit structure and minimal quoting. It is designed as a compact, deterministic representation of structured data, particularly well-suited to arrays of uniform objects.

### Example

```toon
users[2]{id,name,role}:
  1,Alice,admin
  2,Bob,user
```

## Installation

1. Open Zed
2. Go to Extensions (Cmd+Shift+X or Ctrl+Shift+X)
3. Search for "TOON"
4. Click Install

## File Association

Files with the `.toon` extension are automatically recognized.

## Grammar

This extension uses the [tree-sitter-toon](https://github.com/3swordman/tree-sitter-toon).

## Specification

For the complete TOON specification, see the [official spec](https://github.com/toon-format/spec/blob/main/SPEC.md).

## License

GPL-3.0-or-later
