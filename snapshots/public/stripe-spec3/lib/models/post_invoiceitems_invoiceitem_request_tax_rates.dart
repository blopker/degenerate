// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2 {const PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2._(this.value);

factory PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2._(json),
};}

static const PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2 $empty = PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2._('');

static const List<PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2($value)';}
}
/// The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
@immutable
final class PostInvoiceitemsInvoiceitemRequestTaxRates {
  const PostInvoiceitemsInvoiceitemRequestTaxRates({this.listString = const Omittable.absent(),
this.postInvoiceitemsInvoiceitemRequestTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoiceitemsInvoiceitemRequestTaxRates._({required this.rawValue, required this.listString,
required this.postInvoiceitemsInvoiceitemRequestTaxRatesVariant2,});
  factory PostInvoiceitemsInvoiceitemRequestTaxRates.fromJson(Object? json) => PostInvoiceitemsInvoiceitemRequestTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoiceitemsInvoiceitemRequestTaxRatesVariant2: parseAnyOfVariant<PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2>(json, (value) => PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoiceitemsInvoiceitemRequestTaxRatesVariant2> postInvoiceitemsInvoiceitemRequestTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoiceitemsInvoiceitemRequestTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoiceitemsInvoiceitemRequestTaxRatesVariant2.isPresent) postInvoiceitemsInvoiceitemRequestTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoiceitemsInvoiceitemRequestTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoiceitemsInvoiceitemRequestTaxRates(${toJson()})';
}
