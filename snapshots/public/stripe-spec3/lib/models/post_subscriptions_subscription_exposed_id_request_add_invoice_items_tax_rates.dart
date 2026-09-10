// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates {
  const PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2> postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestAddInvoiceItemsTaxRates(${toJson()})';
}
