// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'uri_path.dart';import 'uri_query.dart';
@immutable
final class RulesetsRewriteUri {
  const RulesetsRewriteUri({this.uriPath = const Omittable.absent(),
this.uriQuery = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RulesetsRewriteUri._({required this.rawValue, required this.uriPath,
required this.uriQuery,});
  factory RulesetsRewriteUri.fromJson(Object? json) => RulesetsRewriteUri._(
    rawValue: Omittable(json),
    uriPath: parseAnyOfVariant<UriPath>(json, (value) => UriPath.fromJson(value! as Map<String, dynamic>)),
uriQuery: parseAnyOfVariant<UriQuery>(json, (value) => UriQuery.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<UriPath> uriPath;
final Omittable<UriQuery> uriQuery;

  /// Whether at least one known variant matched.
  bool get isValid => uriPath.isPresent || uriQuery.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (uriPath.isPresent) uriPath.value?.toJson(),
if (uriQuery.isPresent) uriQuery.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RulesetsRewriteUri && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RulesetsRewriteUri(${toJson()})';
}
