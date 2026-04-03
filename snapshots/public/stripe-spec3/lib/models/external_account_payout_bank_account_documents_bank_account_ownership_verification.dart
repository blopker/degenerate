// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification {const ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification({this.files});

factory ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification.fromJson(Map<String, dynamic> json) { return ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification copyWith({List<String> Function()? files}) { return ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'ExternalAccountPayoutBankAccountDocumentsBankAccountOwnershipVerification(files: $files)'; } 
 }
