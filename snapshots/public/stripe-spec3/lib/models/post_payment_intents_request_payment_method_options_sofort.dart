// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param34.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsSofort {
  const PostPaymentIntentsRequestPaymentMethodOptionsSofort({this.paymentMethodOptionsParam34 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsSofort._({required this.rawValue, required this.paymentMethodOptionsParam34,
required this.postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsSofort.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsSofort._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam34: parseAnyOfVariant<PaymentMethodOptionsParam34>(json, (value) => PaymentMethodOptionsParam34.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam34> paymentMethodOptionsParam34;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsSofortVariant2> postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam34.isPresent || postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam34.isPresent) paymentMethodOptionsParam34.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsSofortVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsSofort && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsSofort(${toJson()})';
}
