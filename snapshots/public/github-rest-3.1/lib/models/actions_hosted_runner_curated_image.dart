// GENERATED CODE - DO NOT MODIFY BY HAND

/// The image provider.
final class ActionsHostedRunnerCuratedImageSource {const ActionsHostedRunnerCuratedImageSource._(this.value);

factory ActionsHostedRunnerCuratedImageSource.fromJson(String json) { return switch (json) {
  'github' => github,
  'partner' => partner,
  'custom' => custom,
  _ => ActionsHostedRunnerCuratedImageSource._(json),
}; }

static const ActionsHostedRunnerCuratedImageSource github = ActionsHostedRunnerCuratedImageSource._('github');

static const ActionsHostedRunnerCuratedImageSource partner = ActionsHostedRunnerCuratedImageSource._('partner');

static const ActionsHostedRunnerCuratedImageSource custom = ActionsHostedRunnerCuratedImageSource._('custom');

static const List<ActionsHostedRunnerCuratedImageSource> values = [github, partner, custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsHostedRunnerCuratedImageSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsHostedRunnerCuratedImageSource($value)'; } 
 }
/// Provides details of a hosted runner image
final class ActionsHostedRunnerCuratedImage {const ActionsHostedRunnerCuratedImage({required this.id, required this.platform, required this.sizeGb, required this.displayName, required this.source, });

factory ActionsHostedRunnerCuratedImage.fromJson(Map<String, dynamic> json) { return ActionsHostedRunnerCuratedImage(
  id: json['id'] as String,
  platform: json['platform'] as String,
  sizeGb: (json['size_gb'] as num).toInt(),
  displayName: json['display_name'] as String,
  source: ActionsHostedRunnerCuratedImageSource.fromJson(json['source'] as String),
); }

/// The ID of the image. Use this ID for the `image` parameter when creating a new larger runner.
final String id;

/// The operating system of the image.
final String platform;

/// Image size in GB.
final int sizeGb;

/// Display name for this image.
final String displayName;

/// The image provider.
final ActionsHostedRunnerCuratedImageSource source;

Map<String, dynamic> toJson() { return {
  'id': id,
  'platform': platform,
  'size_gb': sizeGb,
  'display_name': displayName,
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('platform') && json['platform'] is String &&
      json.containsKey('size_gb') && json['size_gb'] is num &&
      json.containsKey('display_name') && json['display_name'] is String &&
      json.containsKey('source'); } 
ActionsHostedRunnerCuratedImage copyWith({String? id, String? platform, int? sizeGb, String? displayName, ActionsHostedRunnerCuratedImageSource? source, }) { return ActionsHostedRunnerCuratedImage(
  id: id ?? this.id,
  platform: platform ?? this.platform,
  sizeGb: sizeGb ?? this.sizeGb,
  displayName: displayName ?? this.displayName,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsHostedRunnerCuratedImage &&
          id == other.id &&
          platform == other.platform &&
          sizeGb == other.sizeGb &&
          displayName == other.displayName &&
          source == other.source; } 
@override int get hashCode { return Object.hash(id, platform, sizeGb, displayName, source); } 
@override String toString() { return 'ActionsHostedRunnerCuratedImage(id: $id, platform: $platform, sizeGb: $sizeGb, displayName: $displayName, source: $source)'; } 
 }
