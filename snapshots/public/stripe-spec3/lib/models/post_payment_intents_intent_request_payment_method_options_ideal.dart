// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param51.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal({this.paymentMethodOptionsParam51 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal._({required this.rawValue, required this.paymentMethodOptionsParam51,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam51: parseAnyOfVariant<PaymentMethodOptionsParam51>(json, (value) => PaymentMethodOptionsParam51.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam51> paymentMethodOptionsParam51;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam51.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam51.isPresent) paymentMethodOptionsParam51.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsIdealVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsIdeal(${toJson()})';
}
