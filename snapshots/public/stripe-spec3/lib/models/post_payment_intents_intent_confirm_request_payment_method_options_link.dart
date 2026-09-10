// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param36.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink({this.paymentIntentPaymentMethodOptionsParam36 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam36,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam36: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam36>(json, (value) => PaymentIntentPaymentMethodOptionsParam36.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam36> paymentIntentPaymentMethodOptionsParam36;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam36.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam36.isPresent) paymentIntentPaymentMethodOptionsParam36.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink(${toJson()})';
}
