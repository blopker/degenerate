// GENERATED CODE - DO NOT MODIFY BY HAND

import 'intel_phishing_url_submit.dart';final class IntelPhishingUrlSubmitComponentsSchemasSingleResponse {const IntelPhishingUrlSubmitComponentsSchemasSingleResponse({this.result});

factory IntelPhishingUrlSubmitComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return IntelPhishingUrlSubmitComponentsSchemasSingleResponse(
  result: json['result'] != null ? IntelPhishingUrlSubmit.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IntelPhishingUrlSubmit? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelPhishingUrlSubmitComponentsSchemasSingleResponse copyWith({IntelPhishingUrlSubmit Function()? result}) { return IntelPhishingUrlSubmitComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPhishingUrlSubmitComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IntelPhishingUrlSubmitComponentsSchemasSingleResponse(result: $result)'; } 
 }
