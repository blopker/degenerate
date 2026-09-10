// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_response5xx_result_info.dart';import 'web3_messages2.dart';@immutable final class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx {const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo = const Omittable.absent(), });

factory Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx.fromJson(Map<String, dynamic> json) {return Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx(
  errors: (json['errors'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Web3Messages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
  resultInfo: json.containsKey('result_info') ? Omittable(json['result_info'] != null ? Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xxResultInfo.fromJson(json['result_info']) : null) : const Omittable.absent(),
);}

final List<Web3Messages2> errors;

final List<Web3Messages2> messages;

final Map<String,dynamic>? result;

/// Specifies whether the API call was successful.
final bool success;

/// Provides the API response.
final Omittable<Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xxResultInfo?> resultInfo;

Map<String, dynamic> toJson() {return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
  if (resultInfo.isPresent) 'result_info': resultInfo.value?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool;}
Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx copyWith({List<Web3Messages2>? errors, List<Web3Messages2>? messages, Map<String, dynamic>? Function()? result, bool? success, Omittable<Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xxResultInfo?>? resultInfo, }) {return Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo ?? this.resultInfo,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          resultInfo == other.resultInfo;}
@override int get hashCode {return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, resultInfo);}
@override String toString() {return 'Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5xx(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)';}
}
