// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_bulk_response429_errors.dart';final class UrlscannerCreateScanBulkResponse429 {const UrlscannerCreateScanBulkResponse429({this.description, required this.errors, required this.message, required this.status, });

factory UrlscannerCreateScanBulkResponse429.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanBulkResponse429(
  description: json['description'] as String?,
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerCreateScanBulkResponse429Errors.fromJson(e as Map<String, dynamic>)).toList(),
  message: json['message'] as String,
  status: (json['status'] as num).toDouble(),
); }

final String? description;

final List<UrlscannerCreateScanBulkResponse429Errors> errors;

final String message;

final double status;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'errors': errors.map((e) => e.toJson()).toList(),
  'message': message,
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('status') && json['status'] is num; } 
UrlscannerCreateScanBulkResponse429 copyWith({String Function()? description, List<UrlscannerCreateScanBulkResponse429Errors>? errors, String? message, double? status, }) { return UrlscannerCreateScanBulkResponse429(
  description: description != null ? description() : this.description,
  errors: errors ?? this.errors,
  message: message ?? this.message,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanBulkResponse429 &&
          description == other.description &&
          listEquals(errors, other.errors) &&
          message == other.message &&
          status == other.status; } 
@override int get hashCode { return Object.hash(description, Object.hashAll(errors), message, status); } 
@override String toString() { return 'UrlscannerCreateScanBulkResponse429(description: $description, errors: $errors, message: $message, status: $status)'; } 
 }
