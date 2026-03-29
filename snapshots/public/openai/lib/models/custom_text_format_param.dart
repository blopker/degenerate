// GENERATED CODE - DO NOT MODIFY BY HAND

/// Unconstrained text format. Always `text`.
final class CustomTextFormatParamType {const CustomTextFormatParamType._(this.value);

factory CustomTextFormatParamType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => CustomTextFormatParamType._(json),
}; }

static const CustomTextFormatParamType text = CustomTextFormatParamType._('text');

static const List<CustomTextFormatParamType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomTextFormatParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomTextFormatParamType($value)'; } 
 }
/// Unconstrained free-form text.
final class CustomTextFormatParam {const CustomTextFormatParam({this.type = CustomTextFormatParamType.text});

factory CustomTextFormatParam.fromJson(Map<String, dynamic> json) { return CustomTextFormatParam(
  type: CustomTextFormatParamType.fromJson(json['type'] as String),
); }

/// Unconstrained text format. Always `text`.
final CustomTextFormatParamType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
CustomTextFormatParam copyWith({CustomTextFormatParamType? type}) { return CustomTextFormatParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomTextFormatParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'CustomTextFormatParam(type: $type)'; } 
 }
