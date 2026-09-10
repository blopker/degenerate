// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AddParticipantRequest {const AddParticipantRequest({required this.customParticipantId, this.name = const Omittable.absent(), this.picture = const Omittable.absent(), this.presetName = 'group_call_host', });

factory AddParticipantRequest.fromJson(Map<String, dynamic> json) { return AddParticipantRequest(
  customParticipantId: json['custom_participant_id'] as String,
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  picture: json.containsKey('picture') ? Omittable(json['picture'] != null ? Uri.parse(json['picture'] as String) : null) : const Omittable.absent(),
  presetName: json['preset_name'] as String,
); }

/// A unique participant ID. You must specify a unique ID for the participant, for example, UUID, email address, and so on.
final String customParticipantId;

/// (Optional) Name of the participant.
final Omittable<String?> name;

/// (Optional) A URL to a picture to be used for the participant.
final Omittable<Uri?> picture;

/// Name of the preset to apply to this participant.
final String presetName;

Map<String, dynamic> toJson() { return {
  'custom_participant_id': customParticipantId,
  if (name.isPresent) 'name': name.value,
  if (picture.isPresent) 'picture': picture.value?.toString(),
  'preset_name': presetName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom_participant_id') && json['custom_participant_id'] is String &&
      json.containsKey('preset_name') && json['preset_name'] is String; } 
AddParticipantRequest copyWith({String? customParticipantId, Omittable<String?>? name, Omittable<Uri?>? picture, String? presetName, }) { return AddParticipantRequest(
  customParticipantId: customParticipantId ?? this.customParticipantId,
  name: name ?? this.name,
  picture: picture ?? this.picture,
  presetName: presetName ?? this.presetName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddParticipantRequest &&
          customParticipantId == other.customParticipantId &&
          name == other.name &&
          picture == other.picture &&
          presetName == other.presetName; } 
@override int get hashCode { return Object.hash(customParticipantId, name, picture, presetName); } 
@override String toString() { return 'AddParticipantRequest(customParticipantId: $customParticipantId, name: $name, picture: $picture, presetName: $presetName)'; } 
 }
