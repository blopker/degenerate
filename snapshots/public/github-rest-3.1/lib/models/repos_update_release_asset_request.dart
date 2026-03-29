// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposUpdateReleaseAssetRequest {const ReposUpdateReleaseAssetRequest({this.name, this.label, this.state, });

factory ReposUpdateReleaseAssetRequest.fromJson(Map<String, dynamic> json) { return ReposUpdateReleaseAssetRequest(
  name: json['name'] as String?,
  label: json['label'] as String?,
  state: json['state'] as String?,
); }

/// The file name of the asset.
final String? name;

/// An alternate short description of the asset. Used in place of the filename.
final String? label;

final String? state;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'label': ?label,
  'state': ?state,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'label', 'state'}.contains(key)); } 
ReposUpdateReleaseAssetRequest copyWith({String Function()? name, String Function()? label, String Function()? state, }) { return ReposUpdateReleaseAssetRequest(
  name: name != null ? name() : this.name,
  label: label != null ? label() : this.label,
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateReleaseAssetRequest &&
          name == other.name &&
          label == other.label &&
          state == other.state; } 
@override int get hashCode { return Object.hash(name, label, state); } 
@override String toString() { return 'ReposUpdateReleaseAssetRequest(name: $name, label: $label, state: $state)'; } 
 }
