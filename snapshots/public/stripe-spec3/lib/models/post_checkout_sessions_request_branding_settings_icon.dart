// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestBrandingSettingsIconType {const PostCheckoutSessionsRequestBrandingSettingsIconType._(this.value);

factory PostCheckoutSessionsRequestBrandingSettingsIconType.fromJson(String json) { return switch (json) {
  'file' => file,
  'url' => url,
  _ => PostCheckoutSessionsRequestBrandingSettingsIconType._(json),
}; }

static const PostCheckoutSessionsRequestBrandingSettingsIconType file = PostCheckoutSessionsRequestBrandingSettingsIconType._('file');

static const PostCheckoutSessionsRequestBrandingSettingsIconType url = PostCheckoutSessionsRequestBrandingSettingsIconType._('url');

static const List<PostCheckoutSessionsRequestBrandingSettingsIconType> values = [file, url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestBrandingSettingsIconType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettingsIconType($value)'; } 
 }
@immutable final class PostCheckoutSessionsRequestBrandingSettingsIcon {const PostCheckoutSessionsRequestBrandingSettingsIcon({required this.type, this.file, this.url, });

factory PostCheckoutSessionsRequestBrandingSettingsIcon.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestBrandingSettingsIcon(
  file: json['file'] as String?,
  type: PostCheckoutSessionsRequestBrandingSettingsIconType.fromJson(json['type'] as String),
  url: json['url'] as String?,
); }

final String? file;

final PostCheckoutSessionsRequestBrandingSettingsIconType type;

final String? url;

Map<String, dynamic> toJson() { return {
  'file': ?file,
  'type': type.toJson(),
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostCheckoutSessionsRequestBrandingSettingsIcon copyWith({String Function()? file, PostCheckoutSessionsRequestBrandingSettingsIconType? type, String Function()? url, }) { return PostCheckoutSessionsRequestBrandingSettingsIcon(
  file: file != null ? file() : this.file,
  type: type ?? this.type,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestBrandingSettingsIcon &&
          file == other.file &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(file, type, url); } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettingsIcon(file: $file, type: $type, url: $url)'; } 
 }
