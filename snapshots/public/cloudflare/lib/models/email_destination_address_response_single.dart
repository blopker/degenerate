// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_destination_address_properties.dart';final class EmailDestinationAddressResponseSingle {const EmailDestinationAddressResponseSingle({this.result});

factory EmailDestinationAddressResponseSingle.fromJson(Map<String, dynamic> json) { return EmailDestinationAddressResponseSingle(
  result: json['result'] != null ? EmailDestinationAddressProperties.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailDestinationAddressProperties? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailDestinationAddressResponseSingle copyWith({EmailDestinationAddressProperties Function()? result}) { return EmailDestinationAddressResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailDestinationAddressResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailDestinationAddressResponseSingle(result: $result)'; } 
 }
