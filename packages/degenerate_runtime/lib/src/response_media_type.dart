/// Whether a response Content-Type matches a declared media type or range.
/// Declared parameters constrain the match; additional response parameters are
/// allowed. Parameter names and charset values are case-insensitive.
bool responseMediaTypeMatches(String? actual, String declared) {
  if (actual == null) return false;
  final response = _parts(actual);
  final expected = _parts(declared);
  final media = response.first.toLowerCase();
  final range = expected.first.toLowerCase();
  if (range != '*/*' &&
      range != media &&
      !(range.endsWith('/*') &&
          media.startsWith(range.substring(0, range.length - 1)))) {
    return false;
  }
  final parameters = _parameters(response.skip(1));
  return _parameters(
    expected.skip(1),
  ).entries.every((entry) => parameters[entry.key] == entry.value);
}

List<String> _parts(String value) {
  final parts = <String>[];
  var start = 0;
  var quoted = false;
  var escaped = false;
  for (var i = 0; i < value.length; i++) {
    final character = value[i];
    if (escaped) {
      escaped = false;
    } else if (quoted && character == r'\') {
      escaped = true;
    } else if (character == '"') {
      quoted = !quoted;
    } else if (!quoted && character == ';') {
      parts.add(value.substring(start, i).trim());
      start = i + 1;
    }
  }
  parts.add(value.substring(start).trim());
  return parts;
}

Map<String, String> _parameters(Iterable<String> parts) {
  final result = <String, String>{};
  for (final part in parts) {
    final separator = part.indexOf('=');
    if (separator < 0) continue;
    final name = part.substring(0, separator).trim().toLowerCase();
    var value = part.substring(separator + 1).trim();
    if (value.length >= 2 && value.startsWith('"') && value.endsWith('"')) {
      value = value
          .substring(1, value.length - 1)
          .replaceAllMapped(RegExp(r'\\(.)'), (m) => m[1]!);
    }
    result[name] = name == 'charset' ? value.toLowerCase() : value;
  }
  return result;
}
