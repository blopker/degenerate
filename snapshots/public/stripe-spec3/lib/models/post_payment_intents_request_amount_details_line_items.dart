// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_request_amount_details_line_items_variant1.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant2 {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant2._(this.value);

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestAmountDetailsLineItemsVariant2._(json),
}; }

static const PostPaymentIntentsRequestAmountDetailsLineItemsVariant2 $empty = PostPaymentIntentsRequestAmountDetailsLineItemsVariant2._('');

static const List<PostPaymentIntentsRequestAmountDetailsLineItemsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestAmountDetailsLineItems {
  const PostPaymentIntentsRequestAmountDetailsLineItems({this.listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1 = const Omittable.absent(),
this.postPaymentIntentsRequestAmountDetailsLineItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestAmountDetailsLineItems._({required this.rawValue, required this.listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1,
required this.postPaymentIntentsRequestAmountDetailsLineItemsVariant2,});
  factory PostPaymentIntentsRequestAmountDetailsLineItems.fromJson(Object? json) => PostPaymentIntentsRequestAmountDetailsLineItems._(
    rawValue: Omittable(json),
    listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1: parseAnyOfVariant<List<PostPaymentIntentsRequestAmountDetailsLineItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentIntentsRequestAmountDetailsLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentIntentsRequestAmountDetailsLineItemsVariant2: parseAnyOfVariant<PostPaymentIntentsRequestAmountDetailsLineItemsVariant2>(json, (value) => PostPaymentIntentsRequestAmountDetailsLineItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentIntentsRequestAmountDetailsLineItemsVariant1>> listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1;
final Omittable<PostPaymentIntentsRequestAmountDetailsLineItemsVariant2> postPaymentIntentsRequestAmountDetailsLineItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1.isPresent || postPaymentIntentsRequestAmountDetailsLineItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1.isPresent) listPostPaymentIntentsRequestAmountDetailsLineItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentIntentsRequestAmountDetailsLineItemsVariant2.isPresent) postPaymentIntentsRequestAmountDetailsLineItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsLineItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestAmountDetailsLineItems(${toJson()})';
}
