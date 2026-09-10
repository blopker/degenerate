// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param21.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsMobilepay {
  const PostPaymentIntentsRequestPaymentMethodOptionsMobilepay({this.paymentMethodOptionsParam21 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsMobilepay._({required this.rawValue, required this.paymentMethodOptionsParam21,
required this.postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsMobilepay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsMobilepay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam21: parseAnyOfVariant<PaymentMethodOptionsParam21>(json, (value) => PaymentMethodOptionsParam21.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam21> paymentMethodOptionsParam21;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2> postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam21.isPresent || postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam21.isPresent) paymentMethodOptionsParam21.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsMobilepayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsMobilepay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsMobilepay(${toJson()})';
}
