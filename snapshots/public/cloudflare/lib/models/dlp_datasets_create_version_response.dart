// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dataset_new_version.dart';@immutable final class DlpDatasetsCreateVersionResponse {const DlpDatasetsCreateVersionResponse({this.result});

factory DlpDatasetsCreateVersionResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsCreateVersionResponse(
  result: json['result'] != null ? DlpDatasetNewVersion.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDatasetNewVersion? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsCreateVersionResponse copyWith({DlpDatasetNewVersion Function()? result}) { return DlpDatasetsCreateVersionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsCreateVersionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsCreateVersionResponse(result: $result)'; } 
 }
