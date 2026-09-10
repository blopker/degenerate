// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2($value)'; } 
 }
/// The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
@immutable
final class PostInvoicesInvoiceLinesLineItemIdRequestTaxRates {
  const PostInvoicesInvoiceLinesLineItemIdRequestTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceLinesLineItemIdRequestTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2,});
  factory PostInvoicesInvoiceLinesLineItemIdRequestTaxRates.fromJson(Object? json) => PostInvoicesInvoiceLinesLineItemIdRequestTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2: parseAnyOfVariant<PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2>(json, (value) => PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2> postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.isPresent) postInvoicesInvoiceLinesLineItemIdRequestTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceLinesLineItemIdRequestTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceLinesLineItemIdRequestTaxRates(${toJson()})';
}
