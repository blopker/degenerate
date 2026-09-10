// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param56.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard({this.paymentMethodOptionsParam56 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard._({required this.rawValue, required this.paymentMethodOptionsParam56,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam56: parseAnyOfVariant<PaymentMethodOptionsParam56>(json, (value) => PaymentMethodOptionsParam56.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam56> paymentMethodOptionsParam56;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam56.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam56.isPresent) paymentMethodOptionsParam56.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsKrCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKrCard(${toJson()})';
}
