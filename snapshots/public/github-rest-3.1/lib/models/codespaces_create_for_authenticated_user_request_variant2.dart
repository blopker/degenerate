// GENERATED CODE - DO NOT MODIFY BY HAND

import 'codespaces_create_for_authenticated_user_request_variant2_pull_request.dart';/// The geographic area for this codespace. If not specified, the value is assigned by IP. This property replaces `location`, which is closing down.
final class CodespacesCreateForAuthenticatedUserRequestVariant2Geo {const CodespacesCreateForAuthenticatedUserRequestVariant2Geo._(this.value);

factory CodespacesCreateForAuthenticatedUserRequestVariant2Geo.fromJson(String json) { return switch (json) {
  'EuropeWest' => europeWest,
  'SoutheastAsia' => southeastAsia,
  'UsEast' => usEast,
  'UsWest' => usWest,
  _ => CodespacesCreateForAuthenticatedUserRequestVariant2Geo._(json),
}; }

static const CodespacesCreateForAuthenticatedUserRequestVariant2Geo europeWest = CodespacesCreateForAuthenticatedUserRequestVariant2Geo._('EuropeWest');

static const CodespacesCreateForAuthenticatedUserRequestVariant2Geo southeastAsia = CodespacesCreateForAuthenticatedUserRequestVariant2Geo._('SoutheastAsia');

static const CodespacesCreateForAuthenticatedUserRequestVariant2Geo usEast = CodespacesCreateForAuthenticatedUserRequestVariant2Geo._('UsEast');

static const CodespacesCreateForAuthenticatedUserRequestVariant2Geo usWest = CodespacesCreateForAuthenticatedUserRequestVariant2Geo._('UsWest');

static const List<CodespacesCreateForAuthenticatedUserRequestVariant2Geo> values = [europeWest, southeastAsia, usEast, usWest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateForAuthenticatedUserRequestVariant2Geo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserRequestVariant2Geo($value)'; } 
 }
final class CodespacesCreateForAuthenticatedUserRequestVariant2 {const CodespacesCreateForAuthenticatedUserRequestVariant2({required this.pullRequest, this.location, this.geo, this.machine, this.devcontainerPath, this.workingDirectory, this.idleTimeoutMinutes, });

factory CodespacesCreateForAuthenticatedUserRequestVariant2.fromJson(Map<String, dynamic> json) { return CodespacesCreateForAuthenticatedUserRequestVariant2(
  pullRequest: CodespacesCreateForAuthenticatedUserRequestVariant2PullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  location: json['location'] as String?,
  geo: json['geo'] != null ? CodespacesCreateForAuthenticatedUserRequestVariant2Geo.fromJson(json['geo'] as String) : null,
  machine: json['machine'] as String?,
  devcontainerPath: json['devcontainer_path'] as String?,
  workingDirectory: json['working_directory'] as String?,
  idleTimeoutMinutes: json['idle_timeout_minutes'] != null ? (json['idle_timeout_minutes'] as num).toInt() : null,
); }

/// Pull request number for this codespace
final CodespacesCreateForAuthenticatedUserRequestVariant2PullRequest pullRequest;

/// The requested location for a new codespace. Best efforts are made to respect this upon creation. Assigned by IP if not provided.
final String? location;

/// The geographic area for this codespace. If not specified, the value is assigned by IP. This property replaces `location`, which is closing down.
final CodespacesCreateForAuthenticatedUserRequestVariant2Geo? geo;

/// Machine type to use for this codespace
final String? machine;

/// Path to devcontainer.json config to use for this codespace
final String? devcontainerPath;

/// Working directory for this codespace
final String? workingDirectory;

/// Time in minutes before codespace stops from inactivity
final int? idleTimeoutMinutes;

Map<String, dynamic> toJson() { return {
  'pull_request': pullRequest.toJson(),
  'location': ?location,
  if (geo != null) 'geo': geo?.toJson(),
  'machine': ?machine,
  'devcontainer_path': ?devcontainerPath,
  'working_directory': ?workingDirectory,
  'idle_timeout_minutes': ?idleTimeoutMinutes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('pull_request'); } 
CodespacesCreateForAuthenticatedUserRequestVariant2 copyWith({CodespacesCreateForAuthenticatedUserRequestVariant2PullRequest? pullRequest, String Function()? location, CodespacesCreateForAuthenticatedUserRequestVariant2Geo Function()? geo, String Function()? machine, String Function()? devcontainerPath, String Function()? workingDirectory, int Function()? idleTimeoutMinutes, }) { return CodespacesCreateForAuthenticatedUserRequestVariant2(
  pullRequest: pullRequest ?? this.pullRequest,
  location: location != null ? location() : this.location,
  geo: geo != null ? geo() : this.geo,
  machine: machine != null ? machine() : this.machine,
  devcontainerPath: devcontainerPath != null ? devcontainerPath() : this.devcontainerPath,
  workingDirectory: workingDirectory != null ? workingDirectory() : this.workingDirectory,
  idleTimeoutMinutes: idleTimeoutMinutes != null ? idleTimeoutMinutes() : this.idleTimeoutMinutes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesCreateForAuthenticatedUserRequestVariant2 &&
          pullRequest == other.pullRequest &&
          location == other.location &&
          geo == other.geo &&
          machine == other.machine &&
          devcontainerPath == other.devcontainerPath &&
          workingDirectory == other.workingDirectory &&
          idleTimeoutMinutes == other.idleTimeoutMinutes; } 
@override int get hashCode { return Object.hash(pullRequest, location, geo, machine, devcontainerPath, workingDirectory, idleTimeoutMinutes); } 
@override String toString() { return 'CodespacesCreateForAuthenticatedUserRequestVariant2(pullRequest: $pullRequest, location: $location, geo: $geo, machine: $machine, devcontainerPath: $devcontainerPath, workingDirectory: $workingDirectory, idleTimeoutMinutes: $idleTimeoutMinutes)'; } 
 }
