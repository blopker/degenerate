// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_key_param3.dart';@immutable final class PostSetupIntentsRequestMandateDataVariant2 {const PostSetupIntentsRequestMandateDataVariant2._(this.value);

factory PostSetupIntentsRequestMandateDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestMandateDataVariant2._(json),
}; }

static const PostSetupIntentsRequestMandateDataVariant2 $empty = PostSetupIntentsRequestMandateDataVariant2._('');

static const List<PostSetupIntentsRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestMandateDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestMandateDataVariant2($value)'; } 
 }
/// This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/setup_intents/create#create_setup_intent-confirm).
@immutable
final class PostSetupIntentsRequestMandateData {
  const PostSetupIntentsRequestMandateData({this.secretKeyParam3 = const Omittable.absent(),
this.postSetupIntentsRequestMandateDataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestMandateData._({required this.rawValue, required this.secretKeyParam3,
required this.postSetupIntentsRequestMandateDataVariant2,});
  factory PostSetupIntentsRequestMandateData.fromJson(Object? json) => PostSetupIntentsRequestMandateData._(
    rawValue: Omittable(json),
    secretKeyParam3: parseAnyOfVariant<SecretKeyParam3>(json, (value) => SecretKeyParam3.fromJson(value! as Map<String, dynamic>)),
postSetupIntentsRequestMandateDataVariant2: parseAnyOfVariant<PostSetupIntentsRequestMandateDataVariant2>(json, (value) => PostSetupIntentsRequestMandateDataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SecretKeyParam3> secretKeyParam3;
final Omittable<PostSetupIntentsRequestMandateDataVariant2> postSetupIntentsRequestMandateDataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => secretKeyParam3.isPresent || postSetupIntentsRequestMandateDataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (secretKeyParam3.isPresent) secretKeyParam3.value?.toJson(),
if (postSetupIntentsRequestMandateDataVariant2.isPresent) postSetupIntentsRequestMandateDataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestMandateData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestMandateData(${toJson()})';
}
