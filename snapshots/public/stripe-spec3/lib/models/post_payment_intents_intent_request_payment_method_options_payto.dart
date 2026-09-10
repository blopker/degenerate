// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param25.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto({this.paymentIntentPaymentMethodOptionsParam25 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam25,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam25: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam25>(json, (value) => PaymentIntentPaymentMethodOptionsParam25.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam25> paymentIntentPaymentMethodOptionsParam25;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam25.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam25.isPresent) paymentIntentPaymentMethodOptionsParam25.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto(${toJson()})';
}
