// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates {
  const PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2> postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestInvoiceItemsTaxRates(${toJson()})';
}
