// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param95.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay({this.paymentMethodOptionsParam95 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay._({required this.rawValue, required this.paymentMethodOptionsParam95,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam95: parseAnyOfVariant<PaymentMethodOptionsParam95>(json, (value) => PaymentMethodOptionsParam95.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam95> paymentMethodOptionsParam95;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam95.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam95.isPresent) paymentMethodOptionsParam95.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay(${toJson()})';
}
