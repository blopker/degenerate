// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_messages2.dart';import 'ip_address_management_address_maps_add_an_ip_to_an_address_map_response4_xx_result_info.dart';@immutable final class IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx {const IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, });

factory IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx.fromJson(Map<String, dynamic> json) { return IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4XxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<AddressingMessages2> errors;

final List<AddressingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4XxResultInfo? resultInfo;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx copyWith({List<AddressingMessages2>? errors, List<AddressingMessages2>? messages, bool? success, IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4XxResultInfo Function()? resultInfo, Map<String, dynamic>? Function()? result, }) { return IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4Xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
