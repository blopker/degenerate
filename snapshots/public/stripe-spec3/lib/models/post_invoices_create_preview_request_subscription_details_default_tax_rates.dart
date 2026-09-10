// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsDefaultTaxRates(${toJson()})';
}
