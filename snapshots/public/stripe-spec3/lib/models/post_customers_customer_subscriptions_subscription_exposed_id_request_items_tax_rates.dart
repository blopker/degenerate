// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsTaxRates(${toJson()})';
}
