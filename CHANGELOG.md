# Changelog

All notable changes to the TOON extension for Zed will be documented in this file.

## [0.0.1] - 2025-11-16

### Added
- Initial release with complete grammar support for TOON v2.0
- **Syntax highlighting** for all TOON language elements:
  - Object keys (quoted and unquoted) and property names
  - Primitive values: strings (quoted/unquoted), numbers (integers, decimals, scientific notation), booleans, null
  - Array headers with length declarations and optional field lists
  - Array length numbers highlighted within headers
  - Delimiters: comma `,`, tab `\t`, pipe `|`
  - List markers (hyphens `-`)
  - String escape sequences (`\n`, `\r`, `\t`, `\\`, `\"`)
  - Structural punctuation: brackets `[]`, braces `{}`, colons `:`
- **Bracket matching** for:
  - Square brackets `[]` (array headers)
  - Curly braces `{}` (field lists)
  - Double quotes `""` (strings)
- **Auto-indentation** support:
  - Nested objects with proper indentation levels
  - Array bodies (tabular data and object lists)
  - Proper dedent on structural markers
- **Code outline/structure** view:
  - All object keys (pairs) visible in navigation
  - Supports both simple and array-valued keys
- **Text objects** for Vim mode:
  - Navigate by objects (`ac`/`ic`)
  - Navigate by arrays (`af`/`if`)
  - Navigate by key-value pairs
- **Language configuration**:
  - 2-space indentation (per TOON spec)
  - Space-only indentation (no hard tabs, per TOON spec)
  - File extension `.toon` association
  - No line comment support (TOON doesn't have comments)
- Tree-sitter grammar integration from official tree-sitter-toon repository
- Complete documentation, README, and test file

### Grammar
- Using tree-sitter-toon grammar commit `d0a81a76368ea480f8601d1d74fe6d50a3f498f7`
- Full support for TOON Specification v2.0 features:
  - Root-level objects, arrays, and primitive values
  - Nested objects with indentation-based structure
  - Arrays with header syntax `[length]` or `[length]{fields}`
  - Inline arrays and tabular data
  - Object arrays with list markers
  - Multiple delimiter types (comma, tab, pipe)
  - Quoted and unquoted strings with escape sequences
  - Full numeric support including scientific notation
