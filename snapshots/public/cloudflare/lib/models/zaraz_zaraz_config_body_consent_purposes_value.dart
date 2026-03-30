// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZarazZarazConfigBodyConsentPurposesValue {const ZarazZarazConfigBodyConsentPurposesValue({required this.description, required this.name, });

factory ZarazZarazConfigBodyConsentPurposesValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBodyConsentPurposesValue(
  description: json['description'] as String,
  name: json['name'] as String,
); }

final String description;

final String name;

Map<String, dynamic> toJson() { return {
  'description': description,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('name') && json['name'] is String; } 
ZarazZarazConfigBodyConsentPurposesValue copyWith({String? description, String? name, }) { return ZarazZarazConfigBodyConsentPurposesValue(
  description: description ?? this.description,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBodyConsentPurposesValue &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, name); } 
@override String toString() { return 'ZarazZarazConfigBodyConsentPurposesValue(description: $description, name: $name)'; } 
 }
