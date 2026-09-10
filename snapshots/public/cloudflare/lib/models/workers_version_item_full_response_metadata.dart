// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The source of the version upload.
@immutable final class WorkersVersionItemFullResponseMetadataSource {const WorkersVersionItemFullResponseMetadataSource._(this.value);

factory WorkersVersionItemFullResponseMetadataSource.fromJson(String json) {return switch (json) {
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
  _ => WorkersVersionItemFullResponseMetadataSource._(json),
};}

static const WorkersVersionItemFullResponseMetadataSource unknown = WorkersVersionItemFullResponseMetadataSource._('unknown');

static const WorkersVersionItemFullResponseMetadataSource api = WorkersVersionItemFullResponseMetadataSource._('api');

static const WorkersVersionItemFullResponseMetadataSource wrangler = WorkersVersionItemFullResponseMetadataSource._('wrangler');

static const WorkersVersionItemFullResponseMetadataSource terraform = WorkersVersionItemFullResponseMetadataSource._('terraform');

static const WorkersVersionItemFullResponseMetadataSource dash = WorkersVersionItemFullResponseMetadataSource._('dash');

static const WorkersVersionItemFullResponseMetadataSource dashTemplate = WorkersVersionItemFullResponseMetadataSource._('dash_template');

static const WorkersVersionItemFullResponseMetadataSource integration = WorkersVersionItemFullResponseMetadataSource._('integration');

static const WorkersVersionItemFullResponseMetadataSource quickEditor = WorkersVersionItemFullResponseMetadataSource._('quick_editor');

static const WorkersVersionItemFullResponseMetadataSource playground = WorkersVersionItemFullResponseMetadataSource._('playground');

static const WorkersVersionItemFullResponseMetadataSource workersci = WorkersVersionItemFullResponseMetadataSource._('workersci');

static const List<WorkersVersionItemFullResponseMetadataSource> values = [unknown, api, wrangler, terraform, dash, dashTemplate, integration, quickEditor, playground, workersci];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersVersionItemFullResponseMetadataSource && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersVersionItemFullResponseMetadataSource($value)';}
}
@immutable final class WorkersVersionItemFullResponseMetadata {const WorkersVersionItemFullResponseMetadata({this.authorEmail, this.authorId, this.createdOn, this.hasPreview, this.modifiedOn, this.source, });

factory WorkersVersionItemFullResponseMetadata.fromJson(Map<String, dynamic> json) {return WorkersVersionItemFullResponseMetadata(
  authorEmail: json['author_email'] as String?,
  authorId: json['author_id'] as String?,
  createdOn: json['created_on'] as String?,
  hasPreview: json['hasPreview'] as bool?,
  modifiedOn: json['modified_on'] as String?,
  source: json['source'] != null ? WorkersVersionItemFullResponseMetadataSource.fromJson(json['source'] as String) : null,
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
final WorkersVersionItemFullResponseMetadataSource? source;

Map<String, dynamic> toJson() {return {
  'author_email': ?authorEmail,
  'author_id': ?authorId,
  'created_on': ?createdOn,
  'hasPreview': ?hasPreview,
  'modified_on': ?modifiedOn,
  if (source != null) 'source': source?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'author_email', 'author_id', 'created_on', 'hasPreview', 'modified_on', 'source'}.contains(key));}
WorkersVersionItemFullResponseMetadata copyWith({String? Function()? authorEmail, String? Function()? authorId, String? Function()? createdOn, bool? Function()? hasPreview, String? Function()? modifiedOn, WorkersVersionItemFullResponseMetadataSource? Function()? source, }) {return WorkersVersionItemFullResponseMetadata(
  authorEmail: authorEmail != null ? authorEmail() : this.authorEmail,
  authorId: authorId != null ? authorId() : this.authorId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  hasPreview: hasPreview != null ? hasPreview() : this.hasPreview,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  source: source != null ? source() : this.source,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionItemFullResponseMetadata &&
          authorEmail == other.authorEmail &&
          authorId == other.authorId &&
          createdOn == other.createdOn &&
          hasPreview == other.hasPreview &&
          modifiedOn == other.modifiedOn &&
          source == other.source;}
@override int get hashCode {return Object.hash(authorEmail, authorId, createdOn, hasPreview, modifiedOn, source);}
@override String toString() {return 'WorkersVersionItemFullResponseMetadata(authorEmail: $authorEmail, authorId: $authorId, createdOn: $createdOn, hasPreview: $hasPreview, modifiedOn: $modifiedOn, source: $source)';}
}
