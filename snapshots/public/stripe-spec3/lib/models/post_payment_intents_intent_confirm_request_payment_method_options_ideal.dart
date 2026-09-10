// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param88.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal({this.paymentMethodOptionsParam88 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal._({required this.rawValue, required this.paymentMethodOptionsParam88,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam88: parseAnyOfVariant<PaymentMethodOptionsParam88>(json, (value) => PaymentMethodOptionsParam88.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam88> paymentMethodOptionsParam88;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam88.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam88.isPresent) paymentMethodOptionsParam88.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdealVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsIdeal(${toJson()})';
}
