// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class ResponseSingle34Result {
  const ResponseSingle34Result({this.mapStringdynamic = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponseSingle34Result._({required this.rawValue, required this.mapStringdynamic,
required this.string,});
  factory ResponseSingle34Result.fromJson(Object? json) => ResponseSingle34Result._(
    rawValue: Omittable(json),
    mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>> mapStringdynamic;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringdynamic.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamic.isPresent) mapStringdynamic.value,
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponseSingle34Result && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponseSingle34Result(${toJson()})';
}
