// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_controller_flare.dart';final class MconnDeleteControllerFlareResponse {const MconnDeleteControllerFlareResponse({this.result});

factory MconnDeleteControllerFlareResponse.fromJson(Map<String, dynamic> json) { return MconnDeleteControllerFlareResponse(
  result: json['result'] != null ? MconnControllerFlare.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerFlare? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnDeleteControllerFlareResponse copyWith({MconnControllerFlare Function()? result}) { return MconnDeleteControllerFlareResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnDeleteControllerFlareResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnDeleteControllerFlareResponse(result: $result)'; } 
 }
