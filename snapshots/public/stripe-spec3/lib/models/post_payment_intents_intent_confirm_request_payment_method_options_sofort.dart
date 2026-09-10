// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param108.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort({this.paymentMethodOptionsParam108 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort._({required this.rawValue, required this.paymentMethodOptionsParam108,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam108: parseAnyOfVariant<PaymentMethodOptionsParam108>(json, (value) => PaymentMethodOptionsParam108.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam108> paymentMethodOptionsParam108;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam108.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam108.isPresent) paymentMethodOptionsParam108.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofortVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSofort(${toJson()})';
}
