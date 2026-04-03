// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';extension type const MconnControllerFetchCloudflaredTokenResult(String value) {
factory MconnControllerFetchCloudflaredTokenResult.fromJson(String json) => MconnControllerFetchCloudflaredTokenResult(json);

String toJson() => value;

}
@immutable final class MconnControllerFetchCloudflaredTokenResponse {const MconnControllerFetchCloudflaredTokenResponse({this.result});

factory MconnControllerFetchCloudflaredTokenResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchCloudflaredTokenResponse(
  result: json['result'] != null ? MconnControllerFetchCloudflaredTokenResult.fromJson(json['result'] as String) : null,
); }

final MconnControllerFetchCloudflaredTokenResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerFetchCloudflaredTokenResponse copyWith({MconnControllerFetchCloudflaredTokenResult Function()? result}) { return MconnControllerFetchCloudflaredTokenResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchCloudflaredTokenResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerFetchCloudflaredTokenResponse(result: $result)'; } 
 }
