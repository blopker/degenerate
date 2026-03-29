// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesRequestCustomFieldsVariant1 {const PostInvoicesRequestCustomFieldsVariant1({required this.name, required this.value, });

factory PostInvoicesRequestCustomFieldsVariant1.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestCustomFieldsVariant1(
  name: json['name'] as String,
  value: json['value'] as String,
); }

final String name;

final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
PostInvoicesRequestCustomFieldsVariant1 copyWith({String? name, String? value, }) { return PostInvoicesRequestCustomFieldsVariant1(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestCustomFieldsVariant1 &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'PostInvoicesRequestCustomFieldsVariant1(name: $name, value: $value)'; } 
 }
