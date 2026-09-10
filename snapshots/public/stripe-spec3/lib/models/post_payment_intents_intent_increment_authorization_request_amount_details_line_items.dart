// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_increment_authorization_request_amount_details_line_items_variant1.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems({this.listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1 = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems._({required this.rawValue, required this.listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems._(
    rawValue: Omittable(json),
    listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1: parseAnyOfVariant<List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1>> listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1.isPresent) listPostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsLineItems(${toJson()})';
}
