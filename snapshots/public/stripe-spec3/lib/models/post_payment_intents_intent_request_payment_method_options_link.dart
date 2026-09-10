// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param22.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsLink {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsLink({this.paymentIntentPaymentMethodOptionsParam22 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsLink._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam22,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsLink.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsLink._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam22: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam22>(json, (value) => PaymentIntentPaymentMethodOptionsParam22.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam22> paymentIntentPaymentMethodOptionsParam22;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam22.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam22.isPresent) paymentIntentPaymentMethodOptionsParam22.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsLink && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsLink(${toJson()})';
}
