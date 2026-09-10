// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_scrape_request_variant1.dart';import 'brapi_post_scrape_request_variant2.dart';
@immutable
final class BrapiPostScrapeRequest {
  const BrapiPostScrapeRequest({this.brapiPostScrapeRequestVariant1 = const Omittable.absent(),
this.brapiPostScrapeRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostScrapeRequest._({required this.rawValue, required this.brapiPostScrapeRequestVariant1,
required this.brapiPostScrapeRequestVariant2,});
  factory BrapiPostScrapeRequest.fromJson(Object? json) => BrapiPostScrapeRequest._(
    rawValue: Omittable(json),
    brapiPostScrapeRequestVariant1: parseAnyOfVariant<BrapiPostScrapeRequestVariant1>(json, (value) => BrapiPostScrapeRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostScrapeRequestVariant2: parseAnyOfVariant<BrapiPostScrapeRequestVariant2>(json, (value) => BrapiPostScrapeRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostScrapeRequestVariant1> brapiPostScrapeRequestVariant1;
final Omittable<BrapiPostScrapeRequestVariant2> brapiPostScrapeRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostScrapeRequestVariant1.isPresent || brapiPostScrapeRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostScrapeRequestVariant1.isPresent) brapiPostScrapeRequestVariant1.value?.toJson(),
if (brapiPostScrapeRequestVariant2.isPresent) brapiPostScrapeRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostScrapeRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostScrapeRequest(${toJson()})';
}
