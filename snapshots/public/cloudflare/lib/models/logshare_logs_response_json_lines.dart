// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class LogshareLogsResponseJsonLines {
  const LogshareLogsResponseJsonLines({this.string = const Omittable.absent(),
this.mapStringdynamic = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const LogshareLogsResponseJsonLines._({required this.rawValue, required this.string,
required this.mapStringdynamic,});
  factory LogshareLogsResponseJsonLines.fromJson(Object? json) => LogshareLogsResponseJsonLines._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
mapStringdynamic: parseAnyOfVariant<Map<String, dynamic>>(json, (value) => value! as Map<String, dynamic>),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Map<String, dynamic>> mapStringdynamic;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || mapStringdynamic.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (mapStringdynamic.isPresent) mapStringdynamic.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is LogshareLogsResponseJsonLines && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'LogshareLogsResponseJsonLines(${toJson()})';
}
