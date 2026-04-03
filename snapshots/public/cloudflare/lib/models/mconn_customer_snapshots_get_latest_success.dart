// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_coded_message.dart';import 'mconn_customer_snapshots_get_latest_result.dart';@immutable final class MconnCustomerSnapshotsGetLatestSuccess {const MconnCustomerSnapshotsGetLatestSuccess({required this.success, required this.result, this.errors, this.messages, });

factory MconnCustomerSnapshotsGetLatestSuccess.fromJson(Map<String, dynamic> json) { return MconnCustomerSnapshotsGetLatestSuccess(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: MconnCustomerSnapshotsGetLatestResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<MconnCodedMessage>? errors;

final List<MconnCodedMessage>? messages;

final bool success;

final MconnCustomerSnapshotsGetLatestResult result;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
MconnCustomerSnapshotsGetLatestSuccess copyWith({List<MconnCodedMessage> Function()? errors, List<MconnCodedMessage> Function()? messages, bool? success, MconnCustomerSnapshotsGetLatestResult? result, }) { return MconnCustomerSnapshotsGetLatestSuccess(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerSnapshotsGetLatestSuccess &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success, result); } 
@override String toString() { return 'MconnCustomerSnapshotsGetLatestSuccess(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
