// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param35.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps({this.paymentIntentPaymentMethodOptionsParam35 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam35,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam35: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam35>(json, (value) => PaymentIntentPaymentMethodOptionsParam35.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam35> paymentIntentPaymentMethodOptionsParam35;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam35.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam35.isPresent) paymentIntentPaymentMethodOptionsParam35.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps(${toJson()})';
}
