// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_intents_intent_capture_request_amount_details_line_items_variant1.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems {
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems({this.listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1 = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems._({required this.rawValue, required this.listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1,
required this.postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems._(
    rawValue: Omittable(json),
    listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1: parseAnyOfVariant<List<PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1>> listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1;
final Omittable<PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2> postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1.isPresent || postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1.isPresent) listPostPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2.isPresent) postPaymentIntentsIntentCaptureRequestAmountDetailsLineItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestAmountDetailsLineItems(${toJson()})';
}
