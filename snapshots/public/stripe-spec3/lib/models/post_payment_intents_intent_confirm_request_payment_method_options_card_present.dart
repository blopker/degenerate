// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param83.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent({this.paymentMethodOptionsParam83 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent._({required this.rawValue, required this.paymentMethodOptionsParam83,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam83: parseAnyOfVariant<PaymentMethodOptionsParam83>(json, (value) => PaymentMethodOptionsParam83.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam83> paymentMethodOptionsParam83;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam83.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam83.isPresent) paymentMethodOptionsParam83.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent(${toJson()})';
}
