// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param46.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent({this.paymentMethodOptionsParam46 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent._({required this.rawValue, required this.paymentMethodOptionsParam46,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam46: parseAnyOfVariant<PaymentMethodOptionsParam46>(json, (value) => PaymentMethodOptionsParam46.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam46> paymentMethodOptionsParam46;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam46.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam46.isPresent) paymentMethodOptionsParam46.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsCardPresentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCardPresent(${toJson()})';
}
