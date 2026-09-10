// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param101.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow({this.paymentMethodOptionsParam101 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow._({required this.rawValue, required this.paymentMethodOptionsParam101,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam101: parseAnyOfVariant<PaymentMethodOptionsParam101>(json, (value) => PaymentMethodOptionsParam101.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam101> paymentMethodOptionsParam101;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam101.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam101.isPresent) paymentMethodOptionsParam101.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow(${toJson()})';
}
