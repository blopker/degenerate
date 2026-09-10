// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param7.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsBillie {
  const PostPaymentIntentsRequestPaymentMethodOptionsBillie({this.paymentMethodOptionsParam7 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsBillie._({required this.rawValue, required this.paymentMethodOptionsParam7,
required this.postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsBillie.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsBillie._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam7: parseAnyOfVariant<PaymentMethodOptionsParam7>(json, (value) => PaymentMethodOptionsParam7.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam7> paymentMethodOptionsParam7;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsBillieVariant2> postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam7.isPresent || postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam7.isPresent) paymentMethodOptionsParam7.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsBillieVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsBillie && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsBillie(${toJson()})';
}
