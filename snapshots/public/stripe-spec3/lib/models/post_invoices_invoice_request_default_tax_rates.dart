// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestDefaultTaxRatesVariant2 {const PostInvoicesInvoiceRequestDefaultTaxRatesVariant2._(this.value);

factory PostInvoicesInvoiceRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestDefaultTaxRatesVariant2 $empty = PostInvoicesInvoiceRequestDefaultTaxRatesVariant2._('');

static const List<PostInvoicesInvoiceRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestDefaultTaxRatesVariant2($value)'; } 
 }
/// The tax rates that will apply to any line item that does not have `tax_rates` set. Pass an empty string to remove previously-defined tax rates.
@immutable
final class PostInvoicesInvoiceRequestDefaultTaxRates {
  const PostInvoicesInvoiceRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesInvoiceRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesInvoiceRequestDefaultTaxRatesVariant2,});
  factory PostInvoicesInvoiceRequestDefaultTaxRates.fromJson(Object? json) => PostInvoicesInvoiceRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesInvoiceRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestDefaultTaxRatesVariant2>(json, (value) => PostInvoicesInvoiceRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesInvoiceRequestDefaultTaxRatesVariant2> postInvoicesInvoiceRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesInvoiceRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesInvoiceRequestDefaultTaxRatesVariant2.isPresent) postInvoicesInvoiceRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestDefaultTaxRates(${toJson()})';
}
