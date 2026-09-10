// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'uri_path2.dart';import 'uri_query2.dart';
@immutable
final class RulesetsRewriteUriRequest {
  const RulesetsRewriteUriRequest({this.uriPath2 = const Omittable.absent(),
this.uriQuery2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RulesetsRewriteUriRequest._({required this.rawValue, required this.uriPath2,
required this.uriQuery2,});
  factory RulesetsRewriteUriRequest.fromJson(Object? json) => RulesetsRewriteUriRequest._(
    rawValue: Omittable(json),
    uriPath2: parseAnyOfVariant<UriPath2>(json, (value) => UriPath2.fromJson(value! as Map<String, dynamic>)),
uriQuery2: parseAnyOfVariant<UriQuery2>(json, (value) => UriQuery2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<UriPath2> uriPath2;
final Omittable<UriQuery2> uriQuery2;

  /// Whether at least one known variant matched.
  bool get isValid => uriPath2.isPresent || uriQuery2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (uriPath2.isPresent) uriPath2.value?.toJson(),
if (uriQuery2.isPresent) uriQuery2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RulesetsRewriteUriRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RulesetsRewriteUriRequest(${toJson()})';
}
