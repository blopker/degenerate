// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazZarazConfigReturnConsentPurposesWithTranslationsValue {const ZarazZarazConfigReturnConsentPurposesWithTranslationsValue({required this.description, required this.name, required this.order, });

factory ZarazZarazConfigReturnConsentPurposesWithTranslationsValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnConsentPurposesWithTranslationsValue(
  description: (json['description'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  name: (json['name'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  order: (json['order'] as num).toInt(),
); }

/// Object where keys are language codes
final Map<String,String> description;

/// Object where keys are language codes
final Map<String,String> name;

final int order;

Map<String, dynamic> toJson() { return {
  'description': description,
  'name': name,
  'order': order,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('name') &&
      json.containsKey('order') && json['order'] is num; } 
ZarazZarazConfigReturnConsentPurposesWithTranslationsValue copyWith({Map<String,String>? description, Map<String,String>? name, int? order, }) { return ZarazZarazConfigReturnConsentPurposesWithTranslationsValue(
  description: description ?? this.description,
  name: name ?? this.name,
  order: order ?? this.order,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnConsentPurposesWithTranslationsValue &&
          description == other.description &&
          name == other.name &&
          order == other.order; } 
@override int get hashCode { return Object.hash(description, name, order); } 
@override String toString() { return 'ZarazZarazConfigReturnConsentPurposesWithTranslationsValue(description: $description, name: $name, order: $order)'; } 
 }
