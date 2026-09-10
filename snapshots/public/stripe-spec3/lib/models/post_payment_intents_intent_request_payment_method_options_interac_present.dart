// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param52.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent({this.paymentMethodOptionsParam52 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent._({required this.rawValue, required this.paymentMethodOptionsParam52,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam52: parseAnyOfVariant<PaymentMethodOptionsParam52>(json, (value) => PaymentMethodOptionsParam52.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam52> paymentMethodOptionsParam52;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam52.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam52.isPresent) paymentMethodOptionsParam52.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsInteracPresent(${toJson()})';
}
