// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The image provider.
@immutable final class ActionsHostedRunnerPoolImageSource {const ActionsHostedRunnerPoolImageSource._(this.value);

factory ActionsHostedRunnerPoolImageSource.fromJson(String json) { return switch (json) {
  'github' => github,
  'partner' => partner,
  'custom' => custom,
  _ => ActionsHostedRunnerPoolImageSource._(json),
}; }

static const ActionsHostedRunnerPoolImageSource github = ActionsHostedRunnerPoolImageSource._('github');

static const ActionsHostedRunnerPoolImageSource partner = ActionsHostedRunnerPoolImageSource._('partner');

static const ActionsHostedRunnerPoolImageSource custom = ActionsHostedRunnerPoolImageSource._('custom');

static const List<ActionsHostedRunnerPoolImageSource> values = [github, partner, custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsHostedRunnerPoolImageSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsHostedRunnerPoolImageSource($value)'; } 
 }
/// Provides details of a hosted runner image
@immutable final class ActionsHostedRunnerPoolImage {const ActionsHostedRunnerPoolImage({required this.id, required this.sizeGb, required this.displayName, required this.source, this.version, });

factory ActionsHostedRunnerPoolImage.fromJson(Map<String, dynamic> json) { return ActionsHostedRunnerPoolImage(
  id: json['id'] as String,
  sizeGb: (json['size_gb'] as num).toInt(),
  displayName: json['display_name'] as String,
  source: ActionsHostedRunnerPoolImageSource.fromJson(json['source'] as String),
  version: json['version'] as String?,
); }

/// The ID of the image. Use this ID for the `image` parameter when creating a new larger runner.
final String id;

/// Image size in GB.
final int sizeGb;

/// Display name for this image.
final String displayName;

/// The image provider.
final ActionsHostedRunnerPoolImageSource source;

/// The image version of the hosted runner pool.
final String? version;

Map<String, dynamic> toJson() { return {
  'id': id,
  'size_gb': sizeGb,
  'display_name': displayName,
  'source': source.toJson(),
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('size_gb') && json['size_gb'] is num &&
      json.containsKey('display_name') && json['display_name'] is String &&
      json.containsKey('source'); } 
ActionsHostedRunnerPoolImage copyWith({String? id, int? sizeGb, String? displayName, ActionsHostedRunnerPoolImageSource? source, String Function()? version, }) { return ActionsHostedRunnerPoolImage(
  id: id ?? this.id,
  sizeGb: sizeGb ?? this.sizeGb,
  displayName: displayName ?? this.displayName,
  source: source ?? this.source,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsHostedRunnerPoolImage &&
          id == other.id &&
          sizeGb == other.sizeGb &&
          displayName == other.displayName &&
          source == other.source &&
          version == other.version; } 
@override int get hashCode { return Object.hash(id, sizeGb, displayName, source, version); } 
@override String toString() { return 'ActionsHostedRunnerPoolImage(id: $id, sizeGb: $sizeGb, displayName: $displayName, source: $source, version: $version)'; } 
 }
