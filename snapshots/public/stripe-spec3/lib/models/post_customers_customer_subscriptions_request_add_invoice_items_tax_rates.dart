// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates {
  const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2> postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestAddInvoiceItemsTaxRates(${toJson()})';
}
