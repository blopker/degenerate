// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_purge_everything.dart';import 'cache_purge_flex_purge_by_hostnames.dart';import 'cache_purge_flex_purge_by_prefixes.dart';import 'cache_purge_flex_purge_by_tags.dart';import 'cache_purge_single_file.dart';import 'cache_purge_single_file_with_url_and_headers.dart';
@immutable
final class ZonePurgeRequest {
  const ZonePurgeRequest({this.cachePurgeFlexPurgeByTags = const Omittable.absent(),
this.cachePurgeFlexPurgeByHostnames = const Omittable.absent(),
this.cachePurgeFlexPurgeByPrefixes = const Omittable.absent(),
this.cachePurgeEverything = const Omittable.absent(),
this.cachePurgeSingleFile = const Omittable.absent(),
this.cachePurgeSingleFileWithUrlAndHeaders = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZonePurgeRequest._({required this.rawValue, required this.cachePurgeFlexPurgeByTags,
required this.cachePurgeFlexPurgeByHostnames,
required this.cachePurgeFlexPurgeByPrefixes,
required this.cachePurgeEverything,
required this.cachePurgeSingleFile,
required this.cachePurgeSingleFileWithUrlAndHeaders,});
  factory ZonePurgeRequest.fromJson(Object? json) => ZonePurgeRequest._(
    rawValue: Omittable(json),
    cachePurgeFlexPurgeByTags: parseAnyOfVariant<CachePurgeFlexPurgeByTags>(json, (value) => CachePurgeFlexPurgeByTags.fromJson(value! as Map<String, dynamic>)),
cachePurgeFlexPurgeByHostnames: parseAnyOfVariant<CachePurgeFlexPurgeByHostnames>(json, (value) => CachePurgeFlexPurgeByHostnames.fromJson(value! as Map<String, dynamic>)),
cachePurgeFlexPurgeByPrefixes: parseAnyOfVariant<CachePurgeFlexPurgeByPrefixes>(json, (value) => CachePurgeFlexPurgeByPrefixes.fromJson(value! as Map<String, dynamic>)),
cachePurgeEverything: parseAnyOfVariant<CachePurgeEverything>(json, (value) => CachePurgeEverything.fromJson(value! as Map<String, dynamic>)),
cachePurgeSingleFile: parseAnyOfVariant<CachePurgeSingleFile>(json, (value) => CachePurgeSingleFile.fromJson(value! as Map<String, dynamic>)),
cachePurgeSingleFileWithUrlAndHeaders: parseAnyOfVariant<CachePurgeSingleFileWithUrlAndHeaders>(json, (value) => CachePurgeSingleFileWithUrlAndHeaders.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CachePurgeFlexPurgeByTags> cachePurgeFlexPurgeByTags;
final Omittable<CachePurgeFlexPurgeByHostnames> cachePurgeFlexPurgeByHostnames;
final Omittable<CachePurgeFlexPurgeByPrefixes> cachePurgeFlexPurgeByPrefixes;
final Omittable<CachePurgeEverything> cachePurgeEverything;
final Omittable<CachePurgeSingleFile> cachePurgeSingleFile;
final Omittable<CachePurgeSingleFileWithUrlAndHeaders> cachePurgeSingleFileWithUrlAndHeaders;

  /// Whether at least one known variant matched.
  bool get isValid => cachePurgeFlexPurgeByTags.isPresent || cachePurgeFlexPurgeByHostnames.isPresent || cachePurgeFlexPurgeByPrefixes.isPresent || cachePurgeEverything.isPresent || cachePurgeSingleFile.isPresent || cachePurgeSingleFileWithUrlAndHeaders.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (cachePurgeFlexPurgeByTags.isPresent) cachePurgeFlexPurgeByTags.value?.toJson(),
if (cachePurgeFlexPurgeByHostnames.isPresent) cachePurgeFlexPurgeByHostnames.value?.toJson(),
if (cachePurgeFlexPurgeByPrefixes.isPresent) cachePurgeFlexPurgeByPrefixes.value?.toJson(),
if (cachePurgeEverything.isPresent) cachePurgeEverything.value?.toJson(),
if (cachePurgeSingleFile.isPresent) cachePurgeSingleFile.value?.toJson(),
if (cachePurgeSingleFileWithUrlAndHeaders.isPresent) cachePurgeSingleFileWithUrlAndHeaders.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZonePurgeRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZonePurgeRequest(${toJson()})';
}
