import 'package:degenerate_runtime/src/json_value.dart';
import 'package:degenerate_runtime/src/omittable.dart';

/// Attempts one typed view of an anyOf payload without discarding the others.
Omittable<T> parseAnyOfVariant<T>(
  Object? json,
  T Function(Object?) parse, {
  bool Function(T value)? isValid,
}) {
  try {
    final value = parse(json);
    return isValid == null || isValid(value)
        ? Omittable(value)
        : const Omittable.absent();
  } on Object {
    return const Omittable.absent();
  }
}

/// Combines caller-supplied anyOf views, rejecting conflicting wire values.
Object? mergeAnyOf(Iterable<Object?> variants) {
  final iterator = variants.iterator;
  if (!iterator.moveNext()) {
    throw StateError('At least one anyOf variant must be present');
  }
  var result = jsonValue(iterator.current);
  while (iterator.moveNext()) {
    result = _merge(result, jsonValue(iterator.current));
  }
  return result;
}

Object? _merge(Object? a, Object? b) {
  if (a is Map<String, dynamic> && b is Map<String, dynamic>) {
    final result = <String, Object?>{...a};
    for (final entry in b.entries) {
      result[entry.key] = result.containsKey(entry.key)
          ? _merge(result[entry.key], entry.value)
          : entry.value;
    }
    return result;
  }
  if (jsonValueEquals(a, b)) return a;
  throw StateError('Conflicting anyOf values: $a and $b');
}

/// Structural equality for JSON values, independent of object key order.
bool jsonValueEquals(Object? a, Object? b) {
  if (identical(a, b)) return true;
  if (a is List && b is List) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (!jsonValueEquals(a[i], b[i])) return false;
    }
    return true;
  }
  if (a is Map && b is Map) {
    return a.length == b.length &&
        a.entries.every(
          (e) => b.containsKey(e.key) && jsonValueEquals(e.value, b[e.key]),
        );
  }
  return a == b;
}

/// Structural hash paired with [jsonValueEquals].
int jsonValueHash(Object? value) => switch (value) {
  List() => Object.hashAll(value.map(jsonValueHash)),
  Map() => Object.hashAllUnordered(
    value.entries.map(
      (e) => Object.hash(e.key, jsonValueHash(e.value)),
    ),
  ),
  _ => value.hashCode,
};
