// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_flare.dart';final class MconnAdminFlareReplaceResponse {const MconnAdminFlareReplaceResponse({this.result});

factory MconnAdminFlareReplaceResponse.fromJson(Map<String, dynamic> json) { return MconnAdminFlareReplaceResponse(
  result: json['result'] != null ? MconnAdminFlare.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminFlare? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminFlareReplaceResponse copyWith({MconnAdminFlare Function()? result}) { return MconnAdminFlareReplaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminFlareReplaceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminFlareReplaceResponse(result: $result)'; } 
 }
