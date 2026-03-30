// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_destination_address_properties.dart';import 'email_destination_addresses_response_collection_result_info.dart';final class EmailDestinationAddressesResponseCollection {const EmailDestinationAddressesResponseCollection({this.result, this.resultInfo, });

factory EmailDestinationAddressesResponseCollection.fromJson(Map<String, dynamic> json) { return EmailDestinationAddressesResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => EmailDestinationAddressProperties.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? EmailDestinationAddressesResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<EmailDestinationAddressProperties>? result;

final EmailDestinationAddressesResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
EmailDestinationAddressesResponseCollection copyWith({List<EmailDestinationAddressProperties> Function()? result, EmailDestinationAddressesResponseCollectionResultInfo Function()? resultInfo, }) { return EmailDestinationAddressesResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailDestinationAddressesResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'EmailDestinationAddressesResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
