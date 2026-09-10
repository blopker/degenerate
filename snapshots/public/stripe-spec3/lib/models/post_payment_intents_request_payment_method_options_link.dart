// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param8.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsLink {
  const PostPaymentIntentsRequestPaymentMethodOptionsLink({this.paymentIntentPaymentMethodOptionsParam8 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsLink._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam8,
required this.postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsLink.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsLink._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam8: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam8>(json, (value) => PaymentIntentPaymentMethodOptionsParam8.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam8> paymentIntentPaymentMethodOptionsParam8;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsLinkVariant2> postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam8.isPresent || postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam8.isPresent) paymentIntentPaymentMethodOptionsParam8.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsLinkVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsLink && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsLink(${toJson()})';
}
