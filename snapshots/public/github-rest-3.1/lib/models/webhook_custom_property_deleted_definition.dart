// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookCustomPropertyDeletedDefinition {const WebhookCustomPropertyDeletedDefinition({required this.propertyName});

factory WebhookCustomPropertyDeletedDefinition.fromJson(Map<String, dynamic> json) { return WebhookCustomPropertyDeletedDefinition(
  propertyName: json['property_name'] as String,
); }

/// The name of the property that was deleted.
final String propertyName;

Map<String, dynamic> toJson() { return {
  'property_name': propertyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('property_name') && json['property_name'] is String; } 
WebhookCustomPropertyDeletedDefinition copyWith({String? propertyName}) { return WebhookCustomPropertyDeletedDefinition(
  propertyName: propertyName ?? this.propertyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCustomPropertyDeletedDefinition &&
          propertyName == other.propertyName; } 
@override int get hashCode { return propertyName.hashCode; } 
@override String toString() { return 'WebhookCustomPropertyDeletedDefinition(propertyName: $propertyName)'; } 
 }
