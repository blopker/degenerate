// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification {const ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification({this.files});

factory ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification copyWith({List<String> Function()? files}) { return ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccount2DocumentsBankAccountOwnershipVerification(files: $files)'; } 
 }
