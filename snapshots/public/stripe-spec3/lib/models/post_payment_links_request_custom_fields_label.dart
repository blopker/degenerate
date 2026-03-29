// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestCustomFieldsLabelType {const PostPaymentLinksRequestCustomFieldsLabelType._(this.value);

factory PostPaymentLinksRequestCustomFieldsLabelType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => PostPaymentLinksRequestCustomFieldsLabelType._(json),
}; }

static const PostPaymentLinksRequestCustomFieldsLabelType custom = PostPaymentLinksRequestCustomFieldsLabelType._('custom');

static const List<PostPaymentLinksRequestCustomFieldsLabelType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomFieldsLabelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomFieldsLabelType($value)'; } 
 }
final class PostPaymentLinksRequestCustomFieldsLabel {const PostPaymentLinksRequestCustomFieldsLabel({required this.custom, required this.type, });

factory PostPaymentLinksRequestCustomFieldsLabel.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestCustomFieldsLabel(
  custom: json['custom'] as String,
  type: PostPaymentLinksRequestCustomFieldsLabelType.fromJson(json['type'] as String),
); }

final String custom;

final PostPaymentLinksRequestCustomFieldsLabelType type;

Map<String, dynamic> toJson() { return {
  'custom': custom,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom') && json['custom'] is String &&
      json.containsKey('type'); } 
PostPaymentLinksRequestCustomFieldsLabel copyWith({String? custom, PostPaymentLinksRequestCustomFieldsLabelType? type, }) { return PostPaymentLinksRequestCustomFieldsLabel(
  custom: custom ?? this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestCustomFieldsLabel &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'PostPaymentLinksRequestCustomFieldsLabel(custom: $custom, type: $type)'; } 
 }
