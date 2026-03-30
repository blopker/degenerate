// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListsItemRedirectStatusCode {const ListsItemRedirectStatusCode._(this.value);

factory ListsItemRedirectStatusCode.fromJson(int json) { return switch (json) {
  301 => $301,
  302 => $302,
  307 => $307,
  308 => $308,
  _ => ListsItemRedirectStatusCode._(json),
}; }

static const ListsItemRedirectStatusCode $301 = ListsItemRedirectStatusCode._(301);

static const ListsItemRedirectStatusCode $302 = ListsItemRedirectStatusCode._(302);

static const ListsItemRedirectStatusCode $307 = ListsItemRedirectStatusCode._(307);

static const ListsItemRedirectStatusCode $308 = ListsItemRedirectStatusCode._(308);

static const List<ListsItemRedirectStatusCode> values = [$301, $302, $307, $308];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListsItemRedirectStatusCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListsItemRedirectStatusCode($value)'; } 
 }
/// The definition of the redirect.
final class ListsItemRedirect {const ListsItemRedirect({this.includeSubdomains = false, this.preservePathSuffix = false, this.preserveQueryString = false, required this.sourceUrl, this.statusCode, this.subpathMatching = false, required this.targetUrl, });

factory ListsItemRedirect.fromJson(Map<String, dynamic> json) { return ListsItemRedirect(
  includeSubdomains: json.containsKey('include_subdomains') ? json['include_subdomains'] as bool : false,
  preservePathSuffix: json.containsKey('preserve_path_suffix') ? json['preserve_path_suffix'] as bool : false,
  preserveQueryString: json.containsKey('preserve_query_string') ? json['preserve_query_string'] as bool : false,
  sourceUrl: json['source_url'] as String,
  statusCode: json['status_code'] != null ? ListsItemRedirectStatusCode.fromJson((json['status_code'] as num).toInt()) : null,
  subpathMatching: json.containsKey('subpath_matching') ? json['subpath_matching'] as bool : false,
  targetUrl: json['target_url'] as String,
); }

final bool includeSubdomains;

final bool preservePathSuffix;

final bool preserveQueryString;

final String sourceUrl;

final ListsItemRedirectStatusCode? statusCode;

final bool subpathMatching;

final String targetUrl;

Map<String, dynamic> toJson() { return {
  'include_subdomains': includeSubdomains,
  'preserve_path_suffix': preservePathSuffix,
  'preserve_query_string': preserveQueryString,
  'source_url': sourceUrl,
  if (statusCode != null) 'status_code': statusCode?.toJson(),
  'subpath_matching': subpathMatching,
  'target_url': targetUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('source_url') && json['source_url'] is String &&
      json.containsKey('target_url') && json['target_url'] is String; } 
ListsItemRedirect copyWith({bool Function()? includeSubdomains, bool Function()? preservePathSuffix, bool Function()? preserveQueryString, String? sourceUrl, ListsItemRedirectStatusCode Function()? statusCode, bool Function()? subpathMatching, String? targetUrl, }) { return ListsItemRedirect(
  includeSubdomains: includeSubdomains != null ? includeSubdomains() : this.includeSubdomains,
  preservePathSuffix: preservePathSuffix != null ? preservePathSuffix() : this.preservePathSuffix,
  preserveQueryString: preserveQueryString != null ? preserveQueryString() : this.preserveQueryString,
  sourceUrl: sourceUrl ?? this.sourceUrl,
  statusCode: statusCode != null ? statusCode() : this.statusCode,
  subpathMatching: subpathMatching != null ? subpathMatching() : this.subpathMatching,
  targetUrl: targetUrl ?? this.targetUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsItemRedirect &&
          includeSubdomains == other.includeSubdomains &&
          preservePathSuffix == other.preservePathSuffix &&
          preserveQueryString == other.preserveQueryString &&
          sourceUrl == other.sourceUrl &&
          statusCode == other.statusCode &&
          subpathMatching == other.subpathMatching &&
          targetUrl == other.targetUrl; } 
@override int get hashCode { return Object.hash(includeSubdomains, preservePathSuffix, preserveQueryString, sourceUrl, statusCode, subpathMatching, targetUrl); } 
@override String toString() { return 'ListsItemRedirect(includeSubdomains: $includeSubdomains, preservePathSuffix: $preservePathSuffix, preserveQueryString: $preserveQueryString, sourceUrl: $sourceUrl, statusCode: $statusCode, subpathMatching: $subpathMatching, targetUrl: $targetUrl)'; } 
 }
