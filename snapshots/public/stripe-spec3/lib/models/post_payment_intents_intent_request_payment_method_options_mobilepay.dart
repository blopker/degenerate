// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param58.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay({this.paymentMethodOptionsParam58 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay._({required this.rawValue, required this.paymentMethodOptionsParam58,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam58: parseAnyOfVariant<PaymentMethodOptionsParam58>(json, (value) => PaymentMethodOptionsParam58.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam58> paymentMethodOptionsParam58;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam58.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam58.isPresent) paymentMethodOptionsParam58.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsMobilepayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMobilepay(${toJson()})';
}
