// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_request_variant1.dart';import 'brapi_post_links_request_variant2.dart';
@immutable
final class BrapiPostLinksRequest {
  const BrapiPostLinksRequest({this.brapiPostLinksRequestVariant1 = const Omittable.absent(),
this.brapiPostLinksRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostLinksRequest._({required this.rawValue, required this.brapiPostLinksRequestVariant1,
required this.brapiPostLinksRequestVariant2,});
  factory BrapiPostLinksRequest.fromJson(Object? json) => BrapiPostLinksRequest._(
    rawValue: Omittable(json),
    brapiPostLinksRequestVariant1: parseAnyOfVariant<BrapiPostLinksRequestVariant1>(json, (value) => BrapiPostLinksRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostLinksRequestVariant2: parseAnyOfVariant<BrapiPostLinksRequestVariant2>(json, (value) => BrapiPostLinksRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostLinksRequestVariant1> brapiPostLinksRequestVariant1;
final Omittable<BrapiPostLinksRequestVariant2> brapiPostLinksRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostLinksRequestVariant1.isPresent || brapiPostLinksRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostLinksRequestVariant1.isPresent) brapiPostLinksRequestVariant1.value?.toJson(),
if (brapiPostLinksRequestVariant2.isPresent) brapiPostLinksRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostLinksRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostLinksRequest(${toJson()})';
}
