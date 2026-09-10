// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_markdown_request_variant1.dart';import 'brapi_post_markdown_request_variant2.dart';
@immutable
final class BrapiPostMarkdownRequest {
  const BrapiPostMarkdownRequest({this.brapiPostMarkdownRequestVariant1 = const Omittable.absent(),
this.brapiPostMarkdownRequestVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BrapiPostMarkdownRequest._({required this.rawValue, required this.brapiPostMarkdownRequestVariant1,
required this.brapiPostMarkdownRequestVariant2,});
  factory BrapiPostMarkdownRequest.fromJson(Object? json) => BrapiPostMarkdownRequest._(
    rawValue: Omittable(json),
    brapiPostMarkdownRequestVariant1: parseAnyOfVariant<BrapiPostMarkdownRequestVariant1>(json, (value) => BrapiPostMarkdownRequestVariant1.fromJson(value! as Map<String, dynamic>)),
brapiPostMarkdownRequestVariant2: parseAnyOfVariant<BrapiPostMarkdownRequestVariant2>(json, (value) => BrapiPostMarkdownRequestVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BrapiPostMarkdownRequestVariant1> brapiPostMarkdownRequestVariant1;
final Omittable<BrapiPostMarkdownRequestVariant2> brapiPostMarkdownRequestVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => brapiPostMarkdownRequestVariant1.isPresent || brapiPostMarkdownRequestVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (brapiPostMarkdownRequestVariant1.isPresent) brapiPostMarkdownRequestVariant1.value?.toJson(),
if (brapiPostMarkdownRequestVariant2.isPresent) brapiPostMarkdownRequestVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BrapiPostMarkdownRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BrapiPostMarkdownRequest(${toJson()})';
}
