// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The source of the version upload.
@immutable final class WorkersVersionItemUploadedMetadataSource {const WorkersVersionItemUploadedMetadataSource._(this.value);

factory WorkersVersionItemUploadedMetadataSource.fromJson(String json) { return switch (json) {
  'unknown' => unknown,
  'api' => api,
  'wrangler' => wrangler,
  'terraform' => terraform,
  'dash' => dash,
  'dash_template' => dashTemplate,
  'integration' => integration,
  'quick_editor' => quickEditor,
  'playground' => playground,
  'workersci' => workersci,
  _ => WorkersVersionItemUploadedMetadataSource._(json),
}; }

static const WorkersVersionItemUploadedMetadataSource unknown = WorkersVersionItemUploadedMetadataSource._('unknown');

static const WorkersVersionItemUploadedMetadataSource api = WorkersVersionItemUploadedMetadataSource._('api');

static const WorkersVersionItemUploadedMetadataSource wrangler = WorkersVersionItemUploadedMetadataSource._('wrangler');

static const WorkersVersionItemUploadedMetadataSource terraform = WorkersVersionItemUploadedMetadataSource._('terraform');

static const WorkersVersionItemUploadedMetadataSource dash = WorkersVersionItemUploadedMetadataSource._('dash');

static const WorkersVersionItemUploadedMetadataSource dashTemplate = WorkersVersionItemUploadedMetadataSource._('dash_template');

static const WorkersVersionItemUploadedMetadataSource integration = WorkersVersionItemUploadedMetadataSource._('integration');

static const WorkersVersionItemUploadedMetadataSource quickEditor = WorkersVersionItemUploadedMetadataSource._('quick_editor');

static const WorkersVersionItemUploadedMetadataSource playground = WorkersVersionItemUploadedMetadataSource._('playground');

static const WorkersVersionItemUploadedMetadataSource workersci = WorkersVersionItemUploadedMetadataSource._('workersci');

static const List<WorkersVersionItemUploadedMetadataSource> values = [unknown, api, wrangler, terraform, dash, dashTemplate, integration, quickEditor, playground, workersci];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionItemUploadedMetadataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionItemUploadedMetadataSource($value)'; } 
 }
@immutable final class WorkersVersionItemUploadedMetadata {const WorkersVersionItemUploadedMetadata({this.authorEmail, this.authorId, this.createdOn, this.hasPreview, this.modifiedOn, this.source, });

factory WorkersVersionItemUploadedMetadata.fromJson(Map<String, dynamic> json) { return WorkersVersionItemUploadedMetadata(
  authorEmail: json['author_email'] as String?,
  authorId: json['author_id'] as String?,
  createdOn: json['created_on'] as String?,
  hasPreview: json['hasPreview'] as bool?,
  modifiedOn: json['modified_on'] as String?,
  source: json['source'] != null ? WorkersVersionItemUploadedMetadataSource.fromJson(json['source'] as String) : null,
); }

/// Email of the user who created the version.
final String? authorEmail;

/// Identifier of the user who created the version.
final String? authorId;

/// When the version was created.
final String? createdOn;

/// Whether the version can be previewed.
final bool? hasPreview;

/// When the version was last modified.
final String? modifiedOn;

/// The source of the version upload.
final WorkersVersionItemUploadedMetadataSource? source;

Map<String, dynamic> toJson() { return {
  'author_email': ?authorEmail,
  'author_id': ?authorId,
  'created_on': ?createdOn,
  'hasPreview': ?hasPreview,
  'modified_on': ?modifiedOn,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'author_email', 'author_id', 'created_on', 'hasPreview', 'modified_on', 'source'}.contains(key)); } 
WorkersVersionItemUploadedMetadata copyWith({String Function()? authorEmail, String Function()? authorId, String Function()? createdOn, bool Function()? hasPreview, String Function()? modifiedOn, WorkersVersionItemUploadedMetadataSource Function()? source, }) { return WorkersVersionItemUploadedMetadata(
  authorEmail: authorEmail != null ? authorEmail() : this.authorEmail,
  authorId: authorId != null ? authorId() : this.authorId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  hasPreview: hasPreview != null ? hasPreview() : this.hasPreview,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemUploadedMetadata &&
          authorEmail == other.authorEmail &&
          authorId == other.authorId &&
          createdOn == other.createdOn &&
          hasPreview == other.hasPreview &&
          modifiedOn == other.modifiedOn &&
          source == other.source; } 
@override int get hashCode { return Object.hash(authorEmail, authorId, createdOn, hasPreview, modifiedOn, source); } 
@override String toString() { return 'WorkersVersionItemUploadedMetadata(authorEmail: $authorEmail, authorId: $authorId, createdOn: $createdOn, hasPreview: $hasPreview, modifiedOn: $modifiedOn, source: $source)'; } 
 }
