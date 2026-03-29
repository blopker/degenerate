// GENERATED CODE - DO NOT MODIFY BY HAND

/// Custom voice reference.
final class VoiceIdsOrCustomVoiceVariant2 {const VoiceIdsOrCustomVoiceVariant2({required this.id});

factory VoiceIdsOrCustomVoiceVariant2.fromJson(Map<String, dynamic> json) { return VoiceIdsOrCustomVoiceVariant2(
  id: json['id'] as String,
); }

/// The custom voice ID, e.g. `voice_1234`.
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
VoiceIdsOrCustomVoiceVariant2 copyWith({String? id}) { return VoiceIdsOrCustomVoiceVariant2(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VoiceIdsOrCustomVoiceVariant2 &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'VoiceIdsOrCustomVoiceVariant2(id: $id)'; } 
 }
