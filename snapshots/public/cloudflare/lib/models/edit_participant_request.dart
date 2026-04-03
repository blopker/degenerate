// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EditParticipantRequest {const EditParticipantRequest({this.name, this.picture, this.presetName, });

factory EditParticipantRequest.fromJson(Map<String, dynamic> json) { return EditParticipantRequest(
  name: json['name'] as String?,
  picture: json['picture'] != null ? Uri.parse(json['picture'] as String) : null,
  presetName: json['preset_name'] as String?,
); }

/// (Optional) Name of the participant.
final String? name;

/// (Optional) A URL to a picture to be used for the participant.
final Uri? picture;

/// (Optional) Name of the preset to apply to this participant.
final String? presetName;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (picture != null) 'picture': picture?.toString(),
  'preset_name': ?presetName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'picture', 'preset_name'}.contains(key)); } 
EditParticipantRequest copyWith({String? Function()? name, Uri? Function()? picture, String? Function()? presetName, }) { return EditParticipantRequest(
  name: name != null ? name() : this.name,
  picture: picture != null ? picture() : this.picture,
  presetName: presetName != null ? presetName() : this.presetName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EditParticipantRequest &&
          name == other.name &&
          picture == other.picture &&
          presetName == other.presetName; } 
@override int get hashCode { return Object.hash(name, picture, presetName); } 
@override String toString() { return 'EditParticipantRequest(name: $name, picture: $picture, presetName: $presetName)'; } 
 }
