// GENERATED CODE - DO NOT MODIFY BY HAND

final class NscMagicSettings {const NscMagicSettings({required this.conduitName, required this.description, required this.mtu, });

factory NscMagicSettings.fromJson(Map<String, dynamic> json) { return NscMagicSettings(
  conduitName: json['conduit_name'] as String,
  description: json['description'] as String,
  mtu: (json['mtu'] as num).toInt(),
); }

final String conduitName;

final String description;

final int mtu;

Map<String, dynamic> toJson() { return {
  'conduit_name': conduitName,
  'description': description,
  'mtu': mtu,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('conduit_name') && json['conduit_name'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('mtu') && json['mtu'] is num; } 
NscMagicSettings copyWith({String? conduitName, String? description, int? mtu, }) { return NscMagicSettings(
  conduitName: conduitName ?? this.conduitName,
  description: description ?? this.description,
  mtu: mtu ?? this.mtu,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscMagicSettings &&
          conduitName == other.conduitName &&
          description == other.description &&
          mtu == other.mtu; } 
@override int get hashCode { return Object.hash(conduitName, description, mtu); } 
@override String toString() { return 'NscMagicSettings(conduitName: $conduitName, description: $description, mtu: $mtu)'; } 
 }
