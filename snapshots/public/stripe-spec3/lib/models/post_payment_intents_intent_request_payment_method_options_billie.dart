// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param44.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie({this.paymentMethodOptionsParam44 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie._({required this.rawValue, required this.paymentMethodOptionsParam44,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam44: parseAnyOfVariant<PaymentMethodOptionsParam44>(json, (value) => PaymentMethodOptionsParam44.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam44> paymentMethodOptionsParam44;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam44.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam44.isPresent) paymentMethodOptionsParam44.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsBillieVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBillie(${toJson()})';
}
