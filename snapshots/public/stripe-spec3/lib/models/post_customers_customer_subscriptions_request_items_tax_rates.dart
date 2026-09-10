// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestItemsTaxRates {
  const PostCustomersCustomerSubscriptionsRequestItemsTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestItemsTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestItemsTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2> postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsRequestItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestItemsTaxRates(${toJson()})';
}
