// GENERATED CODE - DO NOT MODIFY BY HAND

final class KeysCreateRequest {const KeysCreateRequest({required this.name});

factory KeysCreateRequest.fromJson(Map<String, dynamic> json) { return KeysCreateRequest(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
KeysCreateRequest copyWith({String? name}) { return KeysCreateRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KeysCreateRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'KeysCreateRequest(name: $name)'; } 
 }
