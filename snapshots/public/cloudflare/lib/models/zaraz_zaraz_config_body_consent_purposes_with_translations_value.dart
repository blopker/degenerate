// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazZarazConfigBodyConsentPurposesWithTranslationsValue {const ZarazZarazConfigBodyConsentPurposesWithTranslationsValue({required this.description, required this.name, required this.order, });

factory ZarazZarazConfigBodyConsentPurposesWithTranslationsValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBodyConsentPurposesWithTranslationsValue(
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
ZarazZarazConfigBodyConsentPurposesWithTranslationsValue copyWith({Map<String,String>? description, Map<String,String>? name, int? order, }) { return ZarazZarazConfigBodyConsentPurposesWithTranslationsValue(
  description: description ?? this.description,
  name: name ?? this.name,
  order: order ?? this.order,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBodyConsentPurposesWithTranslationsValue &&
          description == other.description &&
          name == other.name &&
          order == other.order; } 
@override int get hashCode { return Object.hash(description, name, order); } 
@override String toString() { return 'ZarazZarazConfigBodyConsentPurposesWithTranslationsValue(description: $description, name: $name, order: $order)'; } 
 }
