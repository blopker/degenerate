/// Low-level Dart-source escaping primitives.
///
/// These functions turn arbitrary (often spec-controlled) text into Dart
/// string literals and doc comments. They have no dependency on the IR so
/// that `SpecString` can call them without an import cycle; the emitters
/// reach them re-exported through `emit_utils.dart`.
library;

/// Unicode characters that Dart warns about in string literals
/// (text direction overrides, zero-width joiners/spaces, bidi isolates, etc.).
final _unicodeControlChars = RegExp(
  '[\u200B-\u200F\u202A-\u202E\u2066-\u2069\uFEFF]',
);

/// Matches any line break Dart's scanner recognizes: `\r\n`, `\r`, or `\n`.
/// A bare `\r` surviving into a `///` line would terminate the comment and
/// turn the rest of the spec string into live source code.
final _lineBreak = RegExp(r'\r\n?|\n');

/// Escape a string value for use inside a Dart single-quoted string literal.
String escapeDartString(String value) {
  return value
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll(r'$', r'\$')
      .replaceAll('\n', r'\n')
      .replaceAll('\r', r'\r')
      .replaceAll('\t', r'\t')
      .replaceAllMapped(_unicodeControlChars, (m) {
        final code = m[0]!.codeUnitAt(0).toRadixString(16).toUpperCase();
        return '\\u${code.padLeft(4, '0')}';
      });
}

/// Produce a Dart string literal for [value], preferring raw strings when
/// the value contains characters that would otherwise need escaping.
///
/// Tries in order:
/// 1. `'...'` — plain single-quoted when nothing needs escaping
/// 2. `"..."` — plain double-quoted when value has `'` but no `"` or `$`
/// 3. `r'...'` — raw single-quoted when value has `$` or `\` but no `'`
/// 4. `r"..."` — raw double-quoted when value has `$`/`\` and `'` but no `"`
/// 5. `'${escaped}'` — fallback with escapes
String dartStringLiteral(String value) {
  final hasSingleQuote = value.contains("'");
  final hasDoubleQuote = value.contains('"');
  final hasDollar = value.contains(r'$');
  final hasBackslash = value.contains(r'\');
  final hasControl = value.contains('\n') ||
      value.contains('\r') ||
      value.contains('\t') ||
      _unicodeControlChars.hasMatch(value);

  // Plain single-quoted when nothing needs escaping.
  if (!hasSingleQuote && !hasDollar && !hasBackslash && !hasControl) {
    return "'$value'";
  }
  // Plain double-quoted when value has ' but no " or $ or control chars.
  if (hasSingleQuote && !hasDoubleQuote && !hasDollar && !hasControl) {
    return '"$value"';
  }
  // Raw strings for values with $ or \ (but no control chars).
  if ((hasDollar || hasBackslash) && !hasControl) {
    if (!hasSingleQuote) return "r'$value'";
    if (!hasDoubleQuote) return 'r"$value"';
  }
  return "'${escapeDartString(value)}'";
}

/// Collapse line breaks so spec-controlled text stays inside a single-line
/// `//` comment — a raw `\r`/`\n` would end the comment and inject source.
String sanitizeCommentText(String text) => text.replaceAll(_lineBreak, ' ');

/// Escape angle brackets in doc comments to prevent
/// unintended HTML interpretation.
/// Wraps `<content>` in backticks: `<content>` → `` `<content>` ``.
/// Skips content already inside backtick-delimited code spans.
String escapeDocComment(String line) {
  // Split on backtick boundaries, alternating between prose and code spans.
  final parts = line.split('`');
  final buf = StringBuffer();
  for (var i = 0; i < parts.length; i++) {
    if (i.isOdd) {
      // Inside backticks - pass through unchanged.
      buf.write('`${parts[i]}`');
    } else {
      // Outside backticks - escape bare <...> tags and [references].
      var prose = parts[i];
      prose = prose.replaceAllMapped(
        RegExp('<([^>]+)>'),
        (m) => '`<${m[1]}>`',
      );
      // Escape bare [text] that aren't markdown links [text](...).
      prose = prose.replaceAllMapped(
        RegExp(r'\[([^\]]+)\](?!\()'),
        (m) => '`[${m[1]}]`',
      );
      buf.write(prose);
    }
  }
  return buf.toString();
}

/// Regex matching a fenced code block opening without a language specifier.
final _bareCodeFence = RegExp(r'^(`{3,})$');

/// Format a description string as `///` doc comment lines.
///
/// Splits on newlines (including bare `\r`), trims trailing whitespace, and
/// escapes HTML-like tags. Adds a `text` language hint to fenced code blocks
/// that lack one.
List<String> formatDocComment(String description) {
  return description.split(_lineBreak).map((l) {
    final trimmed = l.trimRight();
    // Add language to bare fenced code blocks (``` or ```` without language).
    final fenceMatch = _bareCodeFence.firstMatch(trimmed);
    if (fenceMatch != null) {
      return '/// ${fenceMatch[1]!}text';
    }
    return '/// ${escapeDocComment(trimmed)}';
  }).toList();
}
