// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'client_key_param.dart';import 'secret_key_param2.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestMandateDataVariant2 {const PostPaymentIntentsIntentConfirmRequestMandateDataVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestMandateDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestMandateDataVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestMandateDataVariant2 $empty = PostPaymentIntentsIntentConfirmRequestMandateDataVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestMandateDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestMandateDataVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestMandateData {
  const PostPaymentIntentsIntentConfirmRequestMandateData({this.secretKeyParam2 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestMandateDataVariant2 = const Omittable.absent(),
this.clientKeyParam = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestMandateData._({required this.rawValue, required this.secretKeyParam2,
required this.postPaymentIntentsIntentConfirmRequestMandateDataVariant2,
required this.clientKeyParam,});
  factory PostPaymentIntentsIntentConfirmRequestMandateData.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestMandateData._(
    rawValue: Omittable(json),
    secretKeyParam2: parseAnyOfVariant<SecretKeyParam2>(json, (value) => SecretKeyParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestMandateDataVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestMandateDataVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestMandateDataVariant2.fromJson(value! as String)),
clientKeyParam: parseAnyOfVariant<ClientKeyParam>(json, (value) => ClientKeyParam.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SecretKeyParam2> secretKeyParam2;
final Omittable<PostPaymentIntentsIntentConfirmRequestMandateDataVariant2> postPaymentIntentsIntentConfirmRequestMandateDataVariant2;
final Omittable<ClientKeyParam> clientKeyParam;

  /// Whether at least one known variant matched.
  bool get isValid => secretKeyParam2.isPresent || postPaymentIntentsIntentConfirmRequestMandateDataVariant2.isPresent || clientKeyParam.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (secretKeyParam2.isPresent) secretKeyParam2.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestMandateDataVariant2.isPresent) postPaymentIntentsIntentConfirmRequestMandateDataVariant2.value?.toJson(),
if (clientKeyParam.isPresent) clientKeyParam.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestMandateData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestMandateData(${toJson()})';
}
