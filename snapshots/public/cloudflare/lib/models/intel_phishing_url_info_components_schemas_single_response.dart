// GENERATED CODE - DO NOT MODIFY BY HAND

import 'intel_phishing_url_info.dart';final class IntelPhishingUrlInfoComponentsSchemasSingleResponse {const IntelPhishingUrlInfoComponentsSchemasSingleResponse({this.result});

factory IntelPhishingUrlInfoComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return IntelPhishingUrlInfoComponentsSchemasSingleResponse(
  result: json['result'] != null ? IntelPhishingUrlInfo.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IntelPhishingUrlInfo? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelPhishingUrlInfoComponentsSchemasSingleResponse copyWith({IntelPhishingUrlInfo Function()? result}) { return IntelPhishingUrlInfoComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPhishingUrlInfoComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IntelPhishingUrlInfoComponentsSchemasSingleResponse(result: $result)'; } 
 }
