// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param49.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay({this.paymentMethodOptionsParam49 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay._({required this.rawValue, required this.paymentMethodOptionsParam49,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam49: parseAnyOfVariant<PaymentMethodOptionsParam49>(json, (value) => PaymentMethodOptionsParam49.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam49> paymentMethodOptionsParam49;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam49.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam49.isPresent) paymentMethodOptionsParam49.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsGiropayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsGiropay(${toJson()})';
}
