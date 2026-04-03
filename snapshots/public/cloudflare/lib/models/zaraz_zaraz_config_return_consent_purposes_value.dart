// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazZarazConfigReturnConsentPurposesValue {const ZarazZarazConfigReturnConsentPurposesValue({required this.description, required this.name, });

factory ZarazZarazConfigReturnConsentPurposesValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnConsentPurposesValue(
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
ZarazZarazConfigReturnConsentPurposesValue copyWith({String? description, String? name, }) { return ZarazZarazConfigReturnConsentPurposesValue(
  description: description ?? this.description,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnConsentPurposesValue &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, name); } 
@override String toString() { return 'ZarazZarazConfigReturnConsentPurposesValue(description: $description, name: $name)'; } 
 }
