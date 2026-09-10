// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
};}

static const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)';}
}

@immutable
final class PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent {
  const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2,});
  factory PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent.fromJson(Object? json) => PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2>(json, (value) => PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2> postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent) postAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent(${toJson()})';
}
