// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The source of the version upload.
@immutable final class WorkersVersionItemUploadedResponseMetadataSource {const WorkersVersionItemUploadedResponseMetadataSource._(this.value);

factory WorkersVersionItemUploadedResponseMetadataSource.fromJson(String json) {return switch (json) {
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
  _ => WorkersVersionItemUploadedResponseMetadataSource._(json),
};}

static const WorkersVersionItemUploadedResponseMetadataSource unknown = WorkersVersionItemUploadedResponseMetadataSource._('unknown');

static const WorkersVersionItemUploadedResponseMetadataSource api = WorkersVersionItemUploadedResponseMetadataSource._('api');

static const WorkersVersionItemUploadedResponseMetadataSource wrangler = WorkersVersionItemUploadedResponseMetadataSource._('wrangler');

static const WorkersVersionItemUploadedResponseMetadataSource terraform = WorkersVersionItemUploadedResponseMetadataSource._('terraform');

static const WorkersVersionItemUploadedResponseMetadataSource dash = WorkersVersionItemUploadedResponseMetadataSource._('dash');

static const WorkersVersionItemUploadedResponseMetadataSource dashTemplate = WorkersVersionItemUploadedResponseMetadataSource._('dash_template');

static const WorkersVersionItemUploadedResponseMetadataSource integration = WorkersVersionItemUploadedResponseMetadataSource._('integration');

static const WorkersVersionItemUploadedResponseMetadataSource quickEditor = WorkersVersionItemUploadedResponseMetadataSource._('quick_editor');

static const WorkersVersionItemUploadedResponseMetadataSource playground = WorkersVersionItemUploadedResponseMetadataSource._('playground');

static const WorkersVersionItemUploadedResponseMetadataSource workersci = WorkersVersionItemUploadedResponseMetadataSource._('workersci');

static const List<WorkersVersionItemUploadedResponseMetadataSource> values = [unknown, api, wrangler, terraform, dash, dashTemplate, integration, quickEditor, playground, workersci];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersVersionItemUploadedResponseMetadataSource && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersVersionItemUploadedResponseMetadataSource($value)';}
}
@immutable final class WorkersVersionItemUploadedResponseMetadata {const WorkersVersionItemUploadedResponseMetadata({this.authorEmail, this.authorId, this.createdOn, this.hasPreview, this.modifiedOn, this.source, });

factory WorkersVersionItemUploadedResponseMetadata.fromJson(Map<String, dynamic> json) {return WorkersVersionItemUploadedResponseMetadata(
  authorEmail: json['author_email'] as String?,
  authorId: json['author_id'] as String?,
  createdOn: json['created_on'] as String?,
  hasPreview: json['hasPreview'] as bool?,
  modifiedOn: json['modified_on'] as String?,
  source: json['source'] != null ? WorkersVersionItemUploadedResponseMetadataSource.fromJson(json['source'] as String) : null,
);}

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
final WorkersVersionItemUploadedResponseMetadataSource? source;

Map<String, dynamic> toJson() {return {
  'author_email': ?authorEmail,
  'author_id': ?authorId,
  'created_on': ?createdOn,
  'hasPreview': ?hasPreview,
  'modified_on': ?modifiedOn,
  if (source != null) 'source': source?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'author_email', 'author_id', 'created_on', 'hasPreview', 'modified_on', 'source'}.contains(key));}
WorkersVersionItemUploadedResponseMetadata copyWith({String? Function()? authorEmail, String? Function()? authorId, String? Function()? createdOn, bool? Function()? hasPreview, String? Function()? modifiedOn, WorkersVersionItemUploadedResponseMetadataSource? Function()? source, }) {return WorkersVersionItemUploadedResponseMetadata(
  authorEmail: authorEmail != null ? authorEmail() : this.authorEmail,
  authorId: authorId != null ? authorId() : this.authorId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  hasPreview: hasPreview != null ? hasPreview() : this.hasPreview,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  source: source != null ? source() : this.source,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionItemUploadedResponseMetadata &&
          authorEmail == other.authorEmail &&
          authorId == other.authorId &&
          createdOn == other.createdOn &&
          hasPreview == other.hasPreview &&
          modifiedOn == other.modifiedOn &&
          source == other.source;}
@override int get hashCode {return Object.hash(authorEmail, authorId, createdOn, hasPreview, modifiedOn, source);}
@override String toString() {return 'WorkersVersionItemUploadedResponseMetadata(authorEmail: $authorEmail, authorId: $authorId, createdOn: $createdOn, hasPreview: $hasPreview, modifiedOn: $modifiedOn, source: $source)';}
}
