// GENERATED CODE - DO NOT MODIFY BY HAND

/// The source of the version upload.
final class WorkersVersionItemShortMetadataSource {const WorkersVersionItemShortMetadataSource._(this.value);

factory WorkersVersionItemShortMetadataSource.fromJson(String json) { return switch (json) {
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
  _ => WorkersVersionItemShortMetadataSource._(json),
}; }

static const WorkersVersionItemShortMetadataSource unknown = WorkersVersionItemShortMetadataSource._('unknown');

static const WorkersVersionItemShortMetadataSource api = WorkersVersionItemShortMetadataSource._('api');

static const WorkersVersionItemShortMetadataSource wrangler = WorkersVersionItemShortMetadataSource._('wrangler');

static const WorkersVersionItemShortMetadataSource terraform = WorkersVersionItemShortMetadataSource._('terraform');

static const WorkersVersionItemShortMetadataSource dash = WorkersVersionItemShortMetadataSource._('dash');

static const WorkersVersionItemShortMetadataSource dashTemplate = WorkersVersionItemShortMetadataSource._('dash_template');

static const WorkersVersionItemShortMetadataSource integration = WorkersVersionItemShortMetadataSource._('integration');

static const WorkersVersionItemShortMetadataSource quickEditor = WorkersVersionItemShortMetadataSource._('quick_editor');

static const WorkersVersionItemShortMetadataSource playground = WorkersVersionItemShortMetadataSource._('playground');

static const WorkersVersionItemShortMetadataSource workersci = WorkersVersionItemShortMetadataSource._('workersci');

static const List<WorkersVersionItemShortMetadataSource> values = [unknown, api, wrangler, terraform, dash, dashTemplate, integration, quickEditor, playground, workersci];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersVersionItemShortMetadataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersVersionItemShortMetadataSource($value)'; } 
 }
final class WorkersVersionItemShortMetadata {const WorkersVersionItemShortMetadata({this.authorEmail, this.authorId, this.createdOn, this.hasPreview, this.modifiedOn, this.source, });

factory WorkersVersionItemShortMetadata.fromJson(Map<String, dynamic> json) { return WorkersVersionItemShortMetadata(
  authorEmail: json['author_email'] as String?,
  authorId: json['author_id'] as String?,
  createdOn: json['created_on'] as String?,
  hasPreview: json['hasPreview'] as bool?,
  modifiedOn: json['modified_on'] as String?,
  source: json['source'] != null ? WorkersVersionItemShortMetadataSource.fromJson(json['source'] as String) : null,
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
final WorkersVersionItemShortMetadataSource? source;

Map<String, dynamic> toJson() { return {
  'author_email': ?authorEmail,
  'author_id': ?authorId,
  'created_on': ?createdOn,
  'hasPreview': ?hasPreview,
  'modified_on': ?modifiedOn,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'author_email', 'author_id', 'created_on', 'hasPreview', 'modified_on', 'source'}.contains(key)); } 
WorkersVersionItemShortMetadata copyWith({String Function()? authorEmail, String Function()? authorId, String Function()? createdOn, bool Function()? hasPreview, String Function()? modifiedOn, WorkersVersionItemShortMetadataSource Function()? source, }) { return WorkersVersionItemShortMetadata(
  authorEmail: authorEmail != null ? authorEmail() : this.authorEmail,
  authorId: authorId != null ? authorId() : this.authorId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  hasPreview: hasPreview != null ? hasPreview() : this.hasPreview,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemShortMetadata &&
          authorEmail == other.authorEmail &&
          authorId == other.authorId &&
          createdOn == other.createdOn &&
          hasPreview == other.hasPreview &&
          modifiedOn == other.modifiedOn &&
          source == other.source; } 
@override int get hashCode { return Object.hash(authorEmail, authorId, createdOn, hasPreview, modifiedOn, source); } 
@override String toString() { return 'WorkersVersionItemShortMetadata(authorEmail: $authorEmail, authorId: $authorId, createdOn: $createdOn, hasPreview: $hasPreview, modifiedOn: $modifiedOn, source: $source)'; } 
 }
