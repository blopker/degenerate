// GENERATED CODE - DO NOT MODIFY BY HAND

/// The source of the version upload.
final class WorkersVersionItemFullMetadataSource {const WorkersVersionItemFullMetadataSource._(this.value);

factory WorkersVersionItemFullMetadataSource.fromJson(String json) { return switch (json) {
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
  _ => WorkersVersionItemFullMetadataSource._(json),
}; }

static const WorkersVersionItemFullMetadataSource unknown = WorkersVersionItemFullMetadataSource._('unknown');

static const WorkersVersionItemFullMetadataSource api = WorkersVersionItemFullMetadataSource._('api');

static const WorkersVersionItemFullMetadataSource wrangler = WorkersVersionItemFullMetadataSource._('wrangler');

static const WorkersVersionItemFullMetadataSource terraform = WorkersVersionItemFullMetadataSource._('terraform');

static const WorkersVersionItemFullMetadataSource dash = WorkersVersionItemFullMetadataSource._('dash');

static const WorkersVersionItemFullMetadataSource dashTemplate = WorkersVersionItemFullMetadataSource._('dash_template');

static const WorkersVersionItemFullMetadataSource integration = WorkersVersionItemFullMetadataSource._('integration');

static const WorkersVersionItemFullMetadataSource quickEditor = WorkersVersionItemFullMetadataSource._('quick_editor');

static const WorkersVersionItemFullMetadataSource playground = WorkersVersionItemFullMetadataSource._('playground');

static const WorkersVersionItemFullMetadataSource workersci = WorkersVersionItemFullMetadataSource._('workersci');

static const List<WorkersVersionItemFullMetadataSource> values = [unknown, api, wrangler, terraform, dash, dashTemplate, integration, quickEditor, playground, workersci];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionItemFullMetadataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionItemFullMetadataSource($value)'; } 
 }
final class WorkersVersionItemFullMetadata {const WorkersVersionItemFullMetadata({this.authorEmail, this.authorId, this.createdOn, this.hasPreview, this.modifiedOn, this.source, });

factory WorkersVersionItemFullMetadata.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullMetadata(
  authorEmail: json['author_email'] as String?,
  authorId: json['author_id'] as String?,
  createdOn: json['created_on'] as String?,
  hasPreview: json['hasPreview'] as bool?,
  modifiedOn: json['modified_on'] as String?,
  source: json['source'] != null ? WorkersVersionItemFullMetadataSource.fromJson(json['source'] as String) : null,
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
final WorkersVersionItemFullMetadataSource? source;

Map<String, dynamic> toJson() { return {
  'author_email': ?authorEmail,
  'author_id': ?authorId,
  'created_on': ?createdOn,
  'hasPreview': ?hasPreview,
  'modified_on': ?modifiedOn,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'author_email', 'author_id', 'created_on', 'hasPreview', 'modified_on', 'source'}.contains(key)); } 
WorkersVersionItemFullMetadata copyWith({String Function()? authorEmail, String Function()? authorId, String Function()? createdOn, bool Function()? hasPreview, String Function()? modifiedOn, WorkersVersionItemFullMetadataSource Function()? source, }) { return WorkersVersionItemFullMetadata(
  authorEmail: authorEmail != null ? authorEmail() : this.authorEmail,
  authorId: authorId != null ? authorId() : this.authorId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  hasPreview: hasPreview != null ? hasPreview() : this.hasPreview,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullMetadata &&
          authorEmail == other.authorEmail &&
          authorId == other.authorId &&
          createdOn == other.createdOn &&
          hasPreview == other.hasPreview &&
          modifiedOn == other.modifiedOn &&
          source == other.source; } 
@override int get hashCode { return Object.hash(authorEmail, authorId, createdOn, hasPreview, modifiedOn, source); } 
@override String toString() { return 'WorkersVersionItemFullMetadata(authorEmail: $authorEmail, authorId: $authorId, createdOn: $createdOn, hasPreview: $hasPreview, modifiedOn: $modifiedOn, source: $source)'; } 
 }
