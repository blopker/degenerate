// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestCustomFieldsLabelType {const PostCheckoutSessionsRequestCustomFieldsLabelType._(this.value);

factory PostCheckoutSessionsRequestCustomFieldsLabelType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => PostCheckoutSessionsRequestCustomFieldsLabelType._(json),
}; }

static const PostCheckoutSessionsRequestCustomFieldsLabelType custom = PostCheckoutSessionsRequestCustomFieldsLabelType._('custom');

static const List<PostCheckoutSessionsRequestCustomFieldsLabelType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomFieldsLabelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomFieldsLabelType($value)'; } 
 }
final class PostCheckoutSessionsRequestCustomFieldsLabel {const PostCheckoutSessionsRequestCustomFieldsLabel({required this.custom, required this.type, });

factory PostCheckoutSessionsRequestCustomFieldsLabel.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestCustomFieldsLabel(
  custom: json['custom'] as String,
  type: PostCheckoutSessionsRequestCustomFieldsLabelType.fromJson(json['type'] as String),
); }

final String custom;

final PostCheckoutSessionsRequestCustomFieldsLabelType type;

Map<String, dynamic> toJson() { return {
  'custom': custom,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom') && json['custom'] is String &&
      json.containsKey('type'); } 
PostCheckoutSessionsRequestCustomFieldsLabel copyWith({String? custom, PostCheckoutSessionsRequestCustomFieldsLabelType? type, }) { return PostCheckoutSessionsRequestCustomFieldsLabel(
  custom: custom ?? this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomFieldsLabel &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomFieldsLabel(custom: $custom, type: $type)'; } 
 }
