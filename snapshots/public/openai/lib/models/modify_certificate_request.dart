// GENERATED CODE - DO NOT MODIFY BY HAND

final class ModifyCertificateRequest {const ModifyCertificateRequest({required this.name});

factory ModifyCertificateRequest.fromJson(Map<String, dynamic> json) { return ModifyCertificateRequest(
  name: json['name'] as String,
); }

/// The updated name for the certificate
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
ModifyCertificateRequest copyWith({String? name}) { return ModifyCertificateRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyCertificateRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'ModifyCertificateRequest(name: $name)'; } 
 }
