// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param81.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie({this.paymentMethodOptionsParam81 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie._({required this.rawValue, required this.paymentMethodOptionsParam81,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam81: parseAnyOfVariant<PaymentMethodOptionsParam81>(json, (value) => PaymentMethodOptionsParam81.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam81> paymentMethodOptionsParam81;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam81.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam81.isPresent) paymentMethodOptionsParam81.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie(${toJson()})';
}
