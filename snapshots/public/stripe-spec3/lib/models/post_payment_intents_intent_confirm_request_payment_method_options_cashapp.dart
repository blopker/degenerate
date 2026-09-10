// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param33.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp({this.paymentIntentPaymentMethodOptionsParam33 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam33,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam33: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam33>(json, (value) => PaymentIntentPaymentMethodOptionsParam33.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam33> paymentIntentPaymentMethodOptionsParam33;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam33.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam33.isPresent) paymentIntentPaymentMethodOptionsParam33.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashappVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCashapp(${toJson()})';
}
