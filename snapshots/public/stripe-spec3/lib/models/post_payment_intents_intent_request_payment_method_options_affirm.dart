// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param38.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm({this.paymentMethodOptionsParam38 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm._({required this.rawValue, required this.paymentMethodOptionsParam38,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam38: parseAnyOfVariant<PaymentMethodOptionsParam38>(json, (value) => PaymentMethodOptionsParam38.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam38> paymentMethodOptionsParam38;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam38.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam38.isPresent) paymentMethodOptionsParam38.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAffirmVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAffirm(${toJson()})';
}
