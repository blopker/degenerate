// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_request_variant1.dart';import 'brapi_post_json_request_variant2.dart';
@immutable
final class BrapiPostJsonRequest {
  const BrapiPostJsonRequest({this.brapiPostJsonRequestVariant1 = const Omittable.absent(),
this.brapiPostJsonRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostJsonRequest._({required this.rawValue, required this.brapiPostJsonRequestVariant1,
required this.brapiPostJsonRequestVariant2,});
  factory BrapiPostJsonRequest.fromJson(Object? json) => BrapiPostJsonRequest._(
    rawValue: Omittable(json),
    brapiPostJsonRequestVariant1: parseAnyOfVariant<BrapiPostJsonRequestVariant1>(json, (value) => BrapiPostJsonRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostJsonRequestVariant2: parseAnyOfVariant<BrapiPostJsonRequestVariant2>(json, (value) => BrapiPostJsonRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostJsonRequestVariant1> brapiPostJsonRequestVariant1;
final Omittable<BrapiPostJsonRequestVariant2> brapiPostJsonRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostJsonRequestVariant1.isPresent || brapiPostJsonRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostJsonRequestVariant1.isPresent) brapiPostJsonRequestVariant1.value?.toJson(),
if (brapiPostJsonRequestVariant2.isPresent) brapiPostJsonRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostJsonRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostJsonRequest(${toJson()})';
}
