// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param98.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo({this.paymentMethodOptionsParam98 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo._({required this.rawValue, required this.paymentMethodOptionsParam98,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam98: parseAnyOfVariant<PaymentMethodOptionsParam98>(json, (value) => PaymentMethodOptionsParam98.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam98> paymentMethodOptionsParam98;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam98.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam98.isPresent) paymentMethodOptionsParam98.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsOxxo(${toJson()})';
}
