// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_request_variant1.dart';import 'brapi_post_pdf_request_variant2.dart';
@immutable
final class BrapiPostPdfRequest {
  const BrapiPostPdfRequest({this.brapiPostPdfRequestVariant1 = const Omittable.absent(),
this.brapiPostPdfRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostPdfRequest._({required this.rawValue, required this.brapiPostPdfRequestVariant1,
required this.brapiPostPdfRequestVariant2,});
  factory BrapiPostPdfRequest.fromJson(Object? json) => BrapiPostPdfRequest._(
    rawValue: Omittable(json),
    brapiPostPdfRequestVariant1: parseAnyOfVariant<BrapiPostPdfRequestVariant1>(json, (value) => BrapiPostPdfRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostPdfRequestVariant2: parseAnyOfVariant<BrapiPostPdfRequestVariant2>(json, (value) => BrapiPostPdfRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostPdfRequestVariant1> brapiPostPdfRequestVariant1;
final Omittable<BrapiPostPdfRequestVariant2> brapiPostPdfRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostPdfRequestVariant1.isPresent || brapiPostPdfRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostPdfRequestVariant1.isPresent) brapiPostPdfRequestVariant1.value?.toJson(),
if (brapiPostPdfRequestVariant2.isPresent) brapiPostPdfRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostPdfRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostPdfRequest(${toJson()})';
}
