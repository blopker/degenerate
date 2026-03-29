// GENERATED CODE - DO NOT MODIFY BY HAND

import 'identifier.dart';/// The domain name
extension type const Name(String value) {
factory Name.fromJson(String json) => Name(json);

String toJson() => value;

}
/// A simple zone object. May have null properties if not a zone subscription.
final class Zone {const Zone({this.id, this.name, });

factory Zone.fromJson(Map<String, dynamic> json) { return Zone(
  id: json['id'] != null ? Identifier.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? Name.fromJson(json['name'] as String) : null,
); }

/// Identifier
final Identifier? id;

/// The domain name
final Name? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Zone copyWith({Identifier Function()? id, Name Function()? name, }) { return Zone(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zone &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'Zone(id: $id, name: $name)'; } 
 }
