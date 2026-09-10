// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EditParticipantRequest {const EditParticipantRequest({this.name = const Omittable.absent(), this.picture = const Omittable.absent(), this.presetName = const Omittable.absent(), });

factory EditParticipantRequest.fromJson(Map<String, dynamic> json) { return EditParticipantRequest(
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  picture: json.containsKey('picture') ? Omittable(json['picture'] != null ? Uri.parse(json['picture'] as String) : null) : const Omittable.absent(),
  presetName: json.containsKey('preset_name') ? Omittable(json['preset_name'] as String?) : const Omittable.absent(),
); }

/// (Optional) Name of the participant.
final Omittable<String?> name;

/// (Optional) A URL to a picture to be used for the participant.
final Omittable<Uri?> picture;

/// (Optional) Name of the preset to apply to this participant.
final Omittable<String?> presetName;

Map<String, dynamic> toJson() { return {
  if (name.isPresent) 'name': name.value,
  if (picture.isPresent) 'picture': picture.value?.toString(),
  if (presetName.isPresent) 'preset_name': presetName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'picture', 'preset_name'}.contains(key)); } 
EditParticipantRequest copyWith({Omittable<String?>? name, Omittable<Uri?>? picture, Omittable<String?>? presetName, }) { return EditParticipantRequest(
  name: name ?? this.name,
  picture: picture ?? this.picture,
  presetName: presetName ?? this.presetName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EditParticipantRequest &&
          name == other.name &&
          picture == other.picture &&
          presetName == other.presetName; } 
@override int get hashCode { return Object.hash(name, picture, presetName); } 
@override String toString() { return 'EditParticipantRequest(name: $name, picture: $picture, presetName: $presetName)'; } 
 }
