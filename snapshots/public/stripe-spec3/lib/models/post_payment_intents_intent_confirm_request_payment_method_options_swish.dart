// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param41.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish({this.paymentIntentPaymentMethodOptionsParam41 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam41,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam41: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam41>(json, (value) => PaymentIntentPaymentMethodOptionsParam41.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam41> paymentIntentPaymentMethodOptionsParam41;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam41.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam41.isPresent) paymentIntentPaymentMethodOptionsParam41.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwishVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSwish(${toJson()})';
}
