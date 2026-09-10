// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param78.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma({this.paymentMethodOptionsParam78 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma._({required this.rawValue, required this.paymentMethodOptionsParam78,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam78: parseAnyOfVariant<PaymentMethodOptionsParam78>(json, (value) => PaymentMethodOptionsParam78.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam78> paymentMethodOptionsParam78;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam78.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam78.isPresent) paymentMethodOptionsParam78.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma(${toJson()})';
}
