// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_key_param.dart';@immutable final class PostPaymentIntentsRequestMandateDataVariant2 {const PostPaymentIntentsRequestMandateDataVariant2._(this.value);

factory PostPaymentIntentsRequestMandateDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestMandateDataVariant2._(json),
};}

static const PostPaymentIntentsRequestMandateDataVariant2 $empty = PostPaymentIntentsRequestMandateDataVariant2._('');

static const List<PostPaymentIntentsRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestMandateDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestMandateDataVariant2($value)';}
}
/// This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
@immutable
final class PostPaymentIntentsRequestMandateData {
  const PostPaymentIntentsRequestMandateData({this.secretKeyParam = const Omittable.absent(),
this.postPaymentIntentsRequestMandateDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestMandateData._({required this.rawValue, required this.secretKeyParam,
required this.postPaymentIntentsRequestMandateDataVariant2,});
  factory PostPaymentIntentsRequestMandateData.fromJson(Object? json) => PostPaymentIntentsRequestMandateData._(
    rawValue: Omittable(json),
    secretKeyParam: parseAnyOfVariant<SecretKeyParam>(json, (value) => SecretKeyParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestMandateDataVariant2: parseAnyOfVariant<PostPaymentIntentsRequestMandateDataVariant2>(json, (value) => PostPaymentIntentsRequestMandateDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SecretKeyParam> secretKeyParam;
final Omittable<PostPaymentIntentsRequestMandateDataVariant2> postPaymentIntentsRequestMandateDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => secretKeyParam.isPresent || postPaymentIntentsRequestMandateDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (secretKeyParam.isPresent) secretKeyParam.value?.toJson(),
if (postPaymentIntentsRequestMandateDataVariant2.isPresent) postPaymentIntentsRequestMandateDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestMandateData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestMandateData(${toJson()})';
}
