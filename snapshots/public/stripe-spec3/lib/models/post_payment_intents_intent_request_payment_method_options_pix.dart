// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param66.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPix {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPix({this.paymentMethodOptionsParam66 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPix._({required this.rawValue, required this.paymentMethodOptionsParam66,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPix.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPix._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam66: parseAnyOfVariant<PaymentMethodOptionsParam66>(json, (value) => PaymentMethodOptionsParam66.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam66> paymentMethodOptionsParam66;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam66.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam66.isPresent) paymentMethodOptionsParam66.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPix(${toJson()})';
}
