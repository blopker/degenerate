// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_payment_method_options_klarna_subscriptions_variant1.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions {
  const PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions({this.listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions._({required this.rawValue, required this.listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1,
required this.postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions._(
    rawValue: Omittable(json),
    listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1: parseAnyOfVariant<List<PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>> listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent) listPostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsKlarnaSubscriptions(${toJson()})';
}
