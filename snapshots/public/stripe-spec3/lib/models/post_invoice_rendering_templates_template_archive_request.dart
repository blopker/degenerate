// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoiceRenderingTemplatesTemplateArchiveRequest {const PostInvoiceRenderingTemplatesTemplateArchiveRequest({this.expand});

factory PostInvoiceRenderingTemplatesTemplateArchiveRequest.fromJson(Map<String, dynamic> json) { return PostInvoiceRenderingTemplatesTemplateArchiveRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoiceRenderingTemplatesTemplateArchiveRequest copyWith({List<String> Function()? expand}) { return PostInvoiceRenderingTemplatesTemplateArchiveRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoiceRenderingTemplatesTemplateArchiveRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostInvoiceRenderingTemplatesTemplateArchiveRequest(expand: $expand)'; } 
 }
