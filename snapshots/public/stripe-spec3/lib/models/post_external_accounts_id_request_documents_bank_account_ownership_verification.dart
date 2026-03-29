// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification {const PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification({this.files});

factory PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification.fromJson(Map<String, dynamic> json) { return PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification copyWith({List<String> Function()? files}) { return PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostExternalAccountsIdRequestDocumentsBankAccountOwnershipVerification(files: $files)'; } 
 }
