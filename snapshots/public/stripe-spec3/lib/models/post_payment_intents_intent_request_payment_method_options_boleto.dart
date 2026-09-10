// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param45.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto({this.paymentMethodOptionsParam45 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto._({required this.rawValue, required this.paymentMethodOptionsParam45,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam45: parseAnyOfVariant<PaymentMethodOptionsParam45>(json, (value) => PaymentMethodOptionsParam45.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam45> paymentMethodOptionsParam45;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam45.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam45.isPresent) paymentMethodOptionsParam45.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsBoletoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBoleto(${toJson()})';
}
