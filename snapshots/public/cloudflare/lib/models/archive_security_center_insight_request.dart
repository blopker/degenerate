// GENERATED CODE - DO NOT MODIFY BY HAND

final class ArchiveSecurityCenterInsightRequest {const ArchiveSecurityCenterInsightRequest({this.dismiss = true});

factory ArchiveSecurityCenterInsightRequest.fromJson(Map<String, dynamic> json) { return ArchiveSecurityCenterInsightRequest(
  dismiss: json.containsKey('dismiss') ? json['dismiss'] as bool : true,
); }

final bool dismiss;

Map<String, dynamic> toJson() { return {
  'dismiss': dismiss,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dismiss'}.contains(key)); } 
ArchiveSecurityCenterInsightRequest copyWith({bool Function()? dismiss}) { return ArchiveSecurityCenterInsightRequest(
  dismiss: dismiss != null ? dismiss() : this.dismiss,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ArchiveSecurityCenterInsightRequest &&
          dismiss == other.dismiss; } 
@override int get hashCode { return dismiss.hashCode; } 
@override String toString() { return 'ArchiveSecurityCenterInsightRequest(dismiss: $dismiss)'; } 
 }
