// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_sending_subdomain_properties.dart';@immutable final class EmailSendingSubdomainsResponseCollection {const EmailSendingSubdomainsResponseCollection({this.result});

factory EmailSendingSubdomainsResponseCollection.fromJson(Map<String, dynamic> json) { return EmailSendingSubdomainsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => EmailSendingSubdomainProperties.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailSendingSubdomainProperties>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailSendingSubdomainsResponseCollection copyWith({List<EmailSendingSubdomainProperties> Function()? result}) { return EmailSendingSubdomainsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSendingSubdomainsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'EmailSendingSubdomainsResponseCollection(result: $result)'; } 
 }
