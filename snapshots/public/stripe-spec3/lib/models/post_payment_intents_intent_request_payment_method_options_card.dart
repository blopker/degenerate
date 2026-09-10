// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param2.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCard {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCard({this.paymentIntentParam2 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCard._({required this.rawValue, required this.paymentIntentParam2,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCard.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    paymentIntentParam2: parseAnyOfVariant<PaymentIntentParam2>(json, (value) => PaymentIntentParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentParam2> paymentIntentParam2;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentParam2.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentParam2.isPresent) paymentIntentParam2.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCard(${toJson()})';
}
