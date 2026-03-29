// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposCreateAutolinkRequest {const ReposCreateAutolinkRequest({required this.keyPrefix, required this.urlTemplate, this.isAlphanumeric = true, });

factory ReposCreateAutolinkRequest.fromJson(Map<String, dynamic> json) { return ReposCreateAutolinkRequest(
  keyPrefix: json['key_prefix'] as String,
  urlTemplate: json['url_template'] as String,
  isAlphanumeric: json.containsKey('is_alphanumeric') ? json['is_alphanumeric'] as bool : true,
); }

/// This prefix appended by certain characters will generate a link any time it is found in an issue, pull request, or commit.
final String keyPrefix;

/// The URL must contain `<num>` for the reference number. `<num>` matches different characters depending on the value of `is_alphanumeric`.
final String urlTemplate;

/// Whether this autolink reference matches alphanumeric characters. If true, the `<num>` parameter of the `url_template` matches alphanumeric characters `A-Z` (case insensitive), `0-9`, and `-`. If false, this autolink reference only matches numeric characters.
final bool isAlphanumeric;

Map<String, dynamic> toJson() { return {
  'key_prefix': keyPrefix,
  'url_template': urlTemplate,
  'is_alphanumeric': isAlphanumeric,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key_prefix') && json['key_prefix'] is String &&
      json.containsKey('url_template') && json['url_template'] is String; } 
ReposCreateAutolinkRequest copyWith({String? keyPrefix, String? urlTemplate, bool Function()? isAlphanumeric, }) { return ReposCreateAutolinkRequest(
  keyPrefix: keyPrefix ?? this.keyPrefix,
  urlTemplate: urlTemplate ?? this.urlTemplate,
  isAlphanumeric: isAlphanumeric != null ? isAlphanumeric() : this.isAlphanumeric,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateAutolinkRequest &&
          keyPrefix == other.keyPrefix &&
          urlTemplate == other.urlTemplate &&
          isAlphanumeric == other.isAlphanumeric; } 
@override int get hashCode { return Object.hash(keyPrefix, urlTemplate, isAlphanumeric); } 
@override String toString() { return 'ReposCreateAutolinkRequest(keyPrefix: $keyPrefix, urlTemplate: $urlTemplate, isAlphanumeric: $isAlphanumeric)'; } 
 }
