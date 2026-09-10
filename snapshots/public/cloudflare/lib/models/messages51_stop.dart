// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class Messages51Stop {
  const Messages51Stop({this.string = const Omittable.absent(),
this.listString = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Messages51Stop._({required this.rawValue, required this.string,
required this.listString,});
  factory Messages51Stop.fromJson(Object? json) => Messages51Stop._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<String>> listString;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listString.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listString.isPresent) listString.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Messages51Stop && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Messages51Stop(${toJson()})';
}
