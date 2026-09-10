// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param103.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix({this.paymentMethodOptionsParam103 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix._({required this.rawValue, required this.paymentMethodOptionsParam103,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam103: parseAnyOfVariant<PaymentMethodOptionsParam103>(json, (value) => PaymentMethodOptionsParam103.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam103> paymentMethodOptionsParam103;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam103.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam103.isPresent) paymentMethodOptionsParam103.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix(${toJson()})';
}
