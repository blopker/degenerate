// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates(${toJson()})';
}
