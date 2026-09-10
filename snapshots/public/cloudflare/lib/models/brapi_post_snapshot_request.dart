// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_request_variant1.dart';import 'brapi_post_snapshot_request_variant2.dart';
@immutable
final class BrapiPostSnapshotRequest {
  const BrapiPostSnapshotRequest({this.brapiPostSnapshotRequestVariant1 = const Omittable.absent(),
this.brapiPostSnapshotRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostSnapshotRequest._({required this.rawValue, required this.brapiPostSnapshotRequestVariant1,
required this.brapiPostSnapshotRequestVariant2,});
  factory BrapiPostSnapshotRequest.fromJson(Object? json) => BrapiPostSnapshotRequest._(
    rawValue: Omittable(json),
    brapiPostSnapshotRequestVariant1: parseAnyOfVariant<BrapiPostSnapshotRequestVariant1>(json, (value) => BrapiPostSnapshotRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostSnapshotRequestVariant2: parseAnyOfVariant<BrapiPostSnapshotRequestVariant2>(json, (value) => BrapiPostSnapshotRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostSnapshotRequestVariant1> brapiPostSnapshotRequestVariant1;
final Omittable<BrapiPostSnapshotRequestVariant2> brapiPostSnapshotRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostSnapshotRequestVariant1.isPresent || brapiPostSnapshotRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostSnapshotRequestVariant1.isPresent) brapiPostSnapshotRequestVariant1.value?.toJson(),
if (brapiPostSnapshotRequestVariant2.isPresent) brapiPostSnapshotRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostSnapshotRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostSnapshotRequest(${toJson()})';
}
