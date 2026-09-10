// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 {const PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(this.value);

factory PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(json),
}; }

static const PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 $empty = PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._('');

static const List<PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2($value)'; } 
 }

@immutable
final class PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent {
  const PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent({this.string = const Omittable.absent(),
this.postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent._({required this.rawValue, required this.string,
required this.postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2,});
  factory PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent.fromJson(Object? json) => PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2: parseAnyOfVariant<PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2>(json, (value) => PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2> postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.isPresent) postIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptanceUserAgent(${toJson()})';
}
