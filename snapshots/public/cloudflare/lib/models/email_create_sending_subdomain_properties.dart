// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailCreateSendingSubdomainProperties {const EmailCreateSendingSubdomainProperties({required this.name});

factory EmailCreateSendingSubdomainProperties.fromJson(Map<String, dynamic> json) { return EmailCreateSendingSubdomainProperties(
  name: json['name'] as String,
); }

/// The subdomain name. Must be within the zone.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
EmailCreateSendingSubdomainProperties copyWith({String? name}) { return EmailCreateSendingSubdomainProperties(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailCreateSendingSubdomainProperties &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'EmailCreateSendingSubdomainProperties(name: $name)'; } 
 }
