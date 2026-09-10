// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param76.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay({this.paymentMethodOptionsParam76 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay._({required this.rawValue, required this.paymentMethodOptionsParam76,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam76: parseAnyOfVariant<PaymentMethodOptionsParam76>(json, (value) => PaymentMethodOptionsParam76.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam76> paymentMethodOptionsParam76;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam76.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam76.isPresent) paymentMethodOptionsParam76.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAfterpayClearpay(${toJson()})';
}
