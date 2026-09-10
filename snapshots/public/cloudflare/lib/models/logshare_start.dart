// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sets the (inclusive) beginning of the requested time frame. This can be a unix timestamp (in seconds or nanoseconds), or an absolute timestamp that conforms to RFC 3339. At this point in time, it cannot exceed a time in the past greater than seven days.
@immutable
final class LogshareStart {
  const LogshareStart({this.string = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const LogshareStart._({required this.rawValue, required this.string,
required this.$int,});
  factory LogshareStart.fromJson(Object? json) => LogshareStart._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is LogshareStart && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'LogshareStart(${toJson()})';
}
