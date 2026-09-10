// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 {const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(this.value);

factory PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(json),
}; }

static const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 $empty = PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._('');

static const List<PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2($value)'; } 
 }

@immutable
final class PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent {
  const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent({this.string = const Omittable.absent(),
this.postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent._({required this.rawValue, required this.string,
required this.postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2,});
  factory PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent.fromJson(Object? json) => PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2: parseAnyOfVariant<PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2>(json, (value) => PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2> postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.isPresent) postIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent(${toJson()})';
}
