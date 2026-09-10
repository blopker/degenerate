// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param82.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto({this.paymentMethodOptionsParam82 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto._({required this.rawValue, required this.paymentMethodOptionsParam82,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam82: parseAnyOfVariant<PaymentMethodOptionsParam82>(json, (value) => PaymentMethodOptionsParam82.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam82> paymentMethodOptionsParam82;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam82.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam82.isPresent) paymentMethodOptionsParam82.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoletoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBoleto(${toJson()})';
}
