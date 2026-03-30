// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_controller_flare.dart';final class MconnControllerFetchFlareResponse {const MconnControllerFetchFlareResponse({this.result});

factory MconnControllerFetchFlareResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchFlareResponse(
  result: json['result'] != null ? MconnControllerFlare.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerFlare? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerFetchFlareResponse copyWith({MconnControllerFlare Function()? result}) { return MconnControllerFetchFlareResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchFlareResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerFetchFlareResponse(result: $result)'; } 
 }
