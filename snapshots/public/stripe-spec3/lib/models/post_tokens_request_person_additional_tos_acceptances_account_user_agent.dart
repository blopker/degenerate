// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
};}

static const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2($value)';}
}

@immutable
final class PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent {
  const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent({this.string = const Omittable.absent(),
this.postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent._({required this.rawValue, required this.string,
required this.postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2,});
  factory PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent.fromJson(Object? json) => PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2: parseAnyOfVariant<PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2>(json, (value) => PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2> postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent) postTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent(${toJson()})';
}
