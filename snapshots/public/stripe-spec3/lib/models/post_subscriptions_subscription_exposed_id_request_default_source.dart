// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2($value)'; } 
 }
/// ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://docs.stripe.com/api/customers/object#customer_object-default_source).
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestDefaultSource {
  const PostSubscriptionsSubscriptionExposedIdRequestDefaultSource({this.string = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestDefaultSource._({required this.rawValue, required this.string,
required this.postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestDefaultSource.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestDefaultSource._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2> postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestDefaultSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestDefaultSource(${toJson()})';
}
