// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_request_variant1.dart';import 'brapi_post_content_request_variant2.dart';
@immutable
final class BrapiPostContentRequest {
  const BrapiPostContentRequest({this.brapiPostContentRequestVariant1 = const Omittable.absent(),
this.brapiPostContentRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostContentRequest._({required this.rawValue, required this.brapiPostContentRequestVariant1,
required this.brapiPostContentRequestVariant2,});
  factory BrapiPostContentRequest.fromJson(Object? json) => BrapiPostContentRequest._(
    rawValue: Omittable(json),
    brapiPostContentRequestVariant1: parseAnyOfVariant<BrapiPostContentRequestVariant1>(json, (value) => BrapiPostContentRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostContentRequestVariant2: parseAnyOfVariant<BrapiPostContentRequestVariant2>(json, (value) => BrapiPostContentRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostContentRequestVariant1> brapiPostContentRequestVariant1;
final Omittable<BrapiPostContentRequestVariant2> brapiPostContentRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostContentRequestVariant1.isPresent || brapiPostContentRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostContentRequestVariant1.isPresent) brapiPostContentRequestVariant1.value?.toJson(),
if (brapiPostContentRequestVariant2.isPresent) brapiPostContentRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostContentRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostContentRequest(${toJson()})';
}
