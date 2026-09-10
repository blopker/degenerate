// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class MagicAppAddSingleRequest {
  const MagicAppAddSingleRequest({this.$dynamic = const Omittable.absent(),
this.$dynamic2 = const Omittable.absent(),
this.$dynamic3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MagicAppAddSingleRequest._({required this.rawValue, required this.$dynamic,
required this.$dynamic2,
required this.$dynamic3,});
  factory MagicAppAddSingleRequest.fromJson(Object? json) => MagicAppAddSingleRequest._(
    rawValue: Omittable(json),
    $dynamic: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic2: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic3: parseAnyOfVariant<dynamic>(json, (value) => value),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<dynamic> $dynamic;
final Omittable<dynamic> $dynamic2;
final Omittable<dynamic> $dynamic3;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || $dynamic.isPresent || $dynamic2.isPresent || $dynamic3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($dynamic.isPresent) $dynamic.value,
if ($dynamic2.isPresent) $dynamic2.value,
if ($dynamic3.isPresent) $dynamic3.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MagicAppAddSingleRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MagicAppAddSingleRequest(${toJson()})';
}
