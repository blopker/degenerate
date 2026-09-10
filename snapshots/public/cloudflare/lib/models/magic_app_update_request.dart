// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
@immutable
final class MagicAppUpdateRequest {
  const MagicAppUpdateRequest({this.$dynamic = const Omittable.absent(),
this.$dynamic2 = const Omittable.absent(),
this.$dynamic3 = const Omittable.absent(),
this.$dynamic4 = const Omittable.absent(),
this.$dynamic5 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MagicAppUpdateRequest._({required this.rawValue, required this.$dynamic,
required this.$dynamic2,
required this.$dynamic3,
required this.$dynamic4,
required this.$dynamic5,});
  factory MagicAppUpdateRequest.fromJson(Object? json) => MagicAppUpdateRequest._(
    rawValue: Omittable(json),
    $dynamic: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic2: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic3: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic4: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic5: parseAnyOfVariant<dynamic>(json, (value) => value),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<dynamic> $dynamic;
final Omittable<dynamic> $dynamic2;
final Omittable<dynamic> $dynamic3;
final Omittable<dynamic> $dynamic4;
final Omittable<dynamic> $dynamic5;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || $dynamic.isPresent || $dynamic2.isPresent || $dynamic3.isPresent || $dynamic4.isPresent || $dynamic5.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($dynamic.isPresent) $dynamic.value,
if ($dynamic2.isPresent) $dynamic2.value,
if ($dynamic3.isPresent) $dynamic3.value,
if ($dynamic4.isPresent) $dynamic4.value,
if ($dynamic5.isPresent) $dynamic5.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MagicAppUpdateRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MagicAppUpdateRequest(${toJson()})';
}
