// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_entry_profile.dart';final class DlpEntryWithSharedProfiles {const DlpEntryWithSharedProfiles({required this.profiles});

factory DlpEntryWithSharedProfiles.fromJson(Map<String, dynamic> json) { return DlpEntryWithSharedProfiles(
  profiles: (json['profiles'] as List<dynamic>).map((e) => DlpEntryProfile.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpEntryProfile> profiles;

Map<String, dynamic> toJson() { return {
  'profiles': profiles.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('profiles'); } 
DlpEntryWithSharedProfiles copyWith({List<DlpEntryProfile>? profiles}) { return DlpEntryWithSharedProfiles(
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntryWithSharedProfiles &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hashAll(profiles).hashCode; } 
@override String toString() { return 'DlpEntryWithSharedProfiles(profiles: $profiles)'; } 
 }
