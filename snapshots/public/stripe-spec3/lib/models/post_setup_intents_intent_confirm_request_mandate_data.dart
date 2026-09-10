// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'client_key_param2.dart';import 'secret_key_param4.dart';@immutable final class PostSetupIntentsIntentConfirmRequestMandateDataVariant2 {const PostSetupIntentsIntentConfirmRequestMandateDataVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestMandateDataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestMandateDataVariant2._(json),
};}

static const PostSetupIntentsIntentConfirmRequestMandateDataVariant2 $empty = PostSetupIntentsIntentConfirmRequestMandateDataVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestMandateDataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestMandateDataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentConfirmRequestMandateDataVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentConfirmRequestMandateData {
  const PostSetupIntentsIntentConfirmRequestMandateData({this.secretKeyParam4 = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestMandateDataVariant2 = const Omittable.absent(),
this.clientKeyParam2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestMandateData._({required this.rawValue, required this.secretKeyParam4,
required this.postSetupIntentsIntentConfirmRequestMandateDataVariant2,
required this.clientKeyParam2,});
  factory PostSetupIntentsIntentConfirmRequestMandateData.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestMandateData._(
    rawValue: Omittable(json),
    secretKeyParam4: parseAnyOfVariant<SecretKeyParam4>(json, (value) => SecretKeyParam4.fromJson(value! as Map<String, dynamic>)),
postSetupIntentsIntentConfirmRequestMandateDataVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestMandateDataVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestMandateDataVariant2.fromJson(value! as String)),
clientKeyParam2: parseAnyOfVariant<ClientKeyParam2>(json, (value) => ClientKeyParam2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SecretKeyParam4> secretKeyParam4;
final Omittable<PostSetupIntentsIntentConfirmRequestMandateDataVariant2> postSetupIntentsIntentConfirmRequestMandateDataVariant2;
final Omittable<ClientKeyParam2> clientKeyParam2;

  /// Whether at least one known variant matched.
  bool get isValid => secretKeyParam4.isPresent || postSetupIntentsIntentConfirmRequestMandateDataVariant2.isPresent || clientKeyParam2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (secretKeyParam4.isPresent) secretKeyParam4.value?.toJson(),
if (postSetupIntentsIntentConfirmRequestMandateDataVariant2.isPresent) postSetupIntentsIntentConfirmRequestMandateDataVariant2.value?.toJson(),
if (clientKeyParam2.isPresent) clientKeyParam2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestMandateData && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestMandateData(${toJson()})';
}
