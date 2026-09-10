// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_request_variant1.dart';import 'brapi_post_screenshot_request_variant2.dart';
@immutable
final class BrapiPostScreenshotRequest {
  const BrapiPostScreenshotRequest({this.brapiPostScreenshotRequestVariant1 = const Omittable.absent(),
this.brapiPostScreenshotRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostScreenshotRequest._({required this.rawValue, required this.brapiPostScreenshotRequestVariant1,
required this.brapiPostScreenshotRequestVariant2,});
  factory BrapiPostScreenshotRequest.fromJson(Object? json) => BrapiPostScreenshotRequest._(
    rawValue: Omittable(json),
    brapiPostScreenshotRequestVariant1: parseAnyOfVariant<BrapiPostScreenshotRequestVariant1>(json, (value) => BrapiPostScreenshotRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostScreenshotRequestVariant2: parseAnyOfVariant<BrapiPostScreenshotRequestVariant2>(json, (value) => BrapiPostScreenshotRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostScreenshotRequestVariant1> brapiPostScreenshotRequestVariant1;
final Omittable<BrapiPostScreenshotRequestVariant2> brapiPostScreenshotRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostScreenshotRequestVariant1.isPresent || brapiPostScreenshotRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostScreenshotRequestVariant1.isPresent) brapiPostScreenshotRequestVariant1.value?.toJson(),
if (brapiPostScreenshotRequestVariant2.isPresent) brapiPostScreenshotRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostScreenshotRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostScreenshotRequest(${toJson()})';
}
