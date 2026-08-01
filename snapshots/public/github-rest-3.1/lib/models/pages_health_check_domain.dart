// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PagesHealthCheckDomain {const PagesHealthCheckDomain({this.host, this.uri, this.nameservers, this.dnsResolves, this.isProxied = const Omittable.absent(), this.isCloudflareIp = const Omittable.absent(), this.isFastlyIp = const Omittable.absent(), this.isOldIpAddress = const Omittable.absent(), this.isARecord = const Omittable.absent(), this.hasCnameRecord = const Omittable.absent(), this.hasMxRecordsPresent = const Omittable.absent(), this.isValidDomain, this.isApexDomain, this.shouldBeARecord = const Omittable.absent(), this.isCnameToGithubUserDomain = const Omittable.absent(), this.isCnameToPagesDotGithubDotCom = const Omittable.absent(), this.isCnameToFastly = const Omittable.absent(), this.isPointedToGithubPagesIp = const Omittable.absent(), this.isNonGithubPagesIpPresent = const Omittable.absent(), this.isPagesDomain, this.isServedByPages = const Omittable.absent(), this.isValid, this.reason = const Omittable.absent(), this.respondsToHttps, this.enforcesHttps, this.httpsError = const Omittable.absent(), this.isHttpsEligible = const Omittable.absent(), this.caaError = const Omittable.absent(), });

factory PagesHealthCheckDomain.fromJson(Map<String, dynamic> json) { return PagesHealthCheckDomain(
  host: json['host'] as String?,
  uri: json['uri'] as String?,
  nameservers: json['nameservers'] as String?,
  dnsResolves: json['dns_resolves'] as bool?,
  isProxied: json.containsKey('is_proxied') ? Omittable(json['is_proxied'] as bool?) : const Omittable.absent(),
  isCloudflareIp: json.containsKey('is_cloudflare_ip') ? Omittable(json['is_cloudflare_ip'] as bool?) : const Omittable.absent(),
  isFastlyIp: json.containsKey('is_fastly_ip') ? Omittable(json['is_fastly_ip'] as bool?) : const Omittable.absent(),
  isOldIpAddress: json.containsKey('is_old_ip_address') ? Omittable(json['is_old_ip_address'] as bool?) : const Omittable.absent(),
  isARecord: json.containsKey('is_a_record') ? Omittable(json['is_a_record'] as bool?) : const Omittable.absent(),
  hasCnameRecord: json.containsKey('has_cname_record') ? Omittable(json['has_cname_record'] as bool?) : const Omittable.absent(),
  hasMxRecordsPresent: json.containsKey('has_mx_records_present') ? Omittable(json['has_mx_records_present'] as bool?) : const Omittable.absent(),
  isValidDomain: json['is_valid_domain'] as bool?,
  isApexDomain: json['is_apex_domain'] as bool?,
  shouldBeARecord: json.containsKey('should_be_a_record') ? Omittable(json['should_be_a_record'] as bool?) : const Omittable.absent(),
  isCnameToGithubUserDomain: json.containsKey('is_cname_to_github_user_domain') ? Omittable(json['is_cname_to_github_user_domain'] as bool?) : const Omittable.absent(),
  isCnameToPagesDotGithubDotCom: json.containsKey('is_cname_to_pages_dot_github_dot_com') ? Omittable(json['is_cname_to_pages_dot_github_dot_com'] as bool?) : const Omittable.absent(),
  isCnameToFastly: json.containsKey('is_cname_to_fastly') ? Omittable(json['is_cname_to_fastly'] as bool?) : const Omittable.absent(),
  isPointedToGithubPagesIp: json.containsKey('is_pointed_to_github_pages_ip') ? Omittable(json['is_pointed_to_github_pages_ip'] as bool?) : const Omittable.absent(),
  isNonGithubPagesIpPresent: json.containsKey('is_non_github_pages_ip_present') ? Omittable(json['is_non_github_pages_ip_present'] as bool?) : const Omittable.absent(),
  isPagesDomain: json['is_pages_domain'] as bool?,
  isServedByPages: json.containsKey('is_served_by_pages') ? Omittable(json['is_served_by_pages'] as bool?) : const Omittable.absent(),
  isValid: json['is_valid'] as bool?,
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
  respondsToHttps: json['responds_to_https'] as bool?,
  enforcesHttps: json['enforces_https'] as bool?,
  httpsError: json.containsKey('https_error') ? Omittable(json['https_error'] as String?) : const Omittable.absent(),
  isHttpsEligible: json.containsKey('is_https_eligible') ? Omittable(json['is_https_eligible'] as bool?) : const Omittable.absent(),
  caaError: json.containsKey('caa_error') ? Omittable(json['caa_error'] as String?) : const Omittable.absent(),
); }

final String? host;

final String? uri;

final String? nameservers;

final bool? dnsResolves;

final Omittable<bool?> isProxied;

final Omittable<bool?> isCloudflareIp;

final Omittable<bool?> isFastlyIp;

final Omittable<bool?> isOldIpAddress;

final Omittable<bool?> isARecord;

final Omittable<bool?> hasCnameRecord;

final Omittable<bool?> hasMxRecordsPresent;

final bool? isValidDomain;

final bool? isApexDomain;

final Omittable<bool?> shouldBeARecord;

final Omittable<bool?> isCnameToGithubUserDomain;

final Omittable<bool?> isCnameToPagesDotGithubDotCom;

final Omittable<bool?> isCnameToFastly;

final Omittable<bool?> isPointedToGithubPagesIp;

final Omittable<bool?> isNonGithubPagesIpPresent;

final bool? isPagesDomain;

final Omittable<bool?> isServedByPages;

final bool? isValid;

final Omittable<String?> reason;

final bool? respondsToHttps;

final bool? enforcesHttps;

final Omittable<String?> httpsError;

final Omittable<bool?> isHttpsEligible;

final Omittable<String?> caaError;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  'uri': ?uri,
  'nameservers': ?nameservers,
  'dns_resolves': ?dnsResolves,
  if (isProxied.isPresent) 'is_proxied': isProxied.value,
  if (isCloudflareIp.isPresent) 'is_cloudflare_ip': isCloudflareIp.value,
  if (isFastlyIp.isPresent) 'is_fastly_ip': isFastlyIp.value,
  if (isOldIpAddress.isPresent) 'is_old_ip_address': isOldIpAddress.value,
  if (isARecord.isPresent) 'is_a_record': isARecord.value,
  if (hasCnameRecord.isPresent) 'has_cname_record': hasCnameRecord.value,
  if (hasMxRecordsPresent.isPresent) 'has_mx_records_present': hasMxRecordsPresent.value,
  'is_valid_domain': ?isValidDomain,
  'is_apex_domain': ?isApexDomain,
  if (shouldBeARecord.isPresent) 'should_be_a_record': shouldBeARecord.value,
  if (isCnameToGithubUserDomain.isPresent) 'is_cname_to_github_user_domain': isCnameToGithubUserDomain.value,
  if (isCnameToPagesDotGithubDotCom.isPresent) 'is_cname_to_pages_dot_github_dot_com': isCnameToPagesDotGithubDotCom.value,
  if (isCnameToFastly.isPresent) 'is_cname_to_fastly': isCnameToFastly.value,
  if (isPointedToGithubPagesIp.isPresent) 'is_pointed_to_github_pages_ip': isPointedToGithubPagesIp.value,
  if (isNonGithubPagesIpPresent.isPresent) 'is_non_github_pages_ip_present': isNonGithubPagesIpPresent.value,
  'is_pages_domain': ?isPagesDomain,
  if (isServedByPages.isPresent) 'is_served_by_pages': isServedByPages.value,
  'is_valid': ?isValid,
  if (reason.isPresent) 'reason': reason.value,
  'responds_to_https': ?respondsToHttps,
  'enforces_https': ?enforcesHttps,
  if (httpsError.isPresent) 'https_error': httpsError.value,
  if (isHttpsEligible.isPresent) 'is_https_eligible': isHttpsEligible.value,
  if (caaError.isPresent) 'caa_error': caaError.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'host', 'uri', 'nameservers', 'dns_resolves', 'is_proxied', 'is_cloudflare_ip', 'is_fastly_ip', 'is_old_ip_address', 'is_a_record', 'has_cname_record', 'has_mx_records_present', 'is_valid_domain', 'is_apex_domain', 'should_be_a_record', 'is_cname_to_github_user_domain', 'is_cname_to_pages_dot_github_dot_com', 'is_cname_to_fastly', 'is_pointed_to_github_pages_ip', 'is_non_github_pages_ip_present', 'is_pages_domain', 'is_served_by_pages', 'is_valid', 'reason', 'responds_to_https', 'enforces_https', 'https_error', 'is_https_eligible', 'caa_error'}.contains(key)); } 
PagesHealthCheckDomain copyWith({String? Function()? host, String? Function()? uri, String? Function()? nameservers, bool? Function()? dnsResolves, Omittable<bool?>? isProxied, Omittable<bool?>? isCloudflareIp, Omittable<bool?>? isFastlyIp, Omittable<bool?>? isOldIpAddress, Omittable<bool?>? isARecord, Omittable<bool?>? hasCnameRecord, Omittable<bool?>? hasMxRecordsPresent, bool? Function()? isValidDomain, bool? Function()? isApexDomain, Omittable<bool?>? shouldBeARecord, Omittable<bool?>? isCnameToGithubUserDomain, Omittable<bool?>? isCnameToPagesDotGithubDotCom, Omittable<bool?>? isCnameToFastly, Omittable<bool?>? isPointedToGithubPagesIp, Omittable<bool?>? isNonGithubPagesIpPresent, bool? Function()? isPagesDomain, Omittable<bool?>? isServedByPages, bool? Function()? isValid, Omittable<String?>? reason, bool? Function()? respondsToHttps, bool? Function()? enforcesHttps, Omittable<String?>? httpsError, Omittable<bool?>? isHttpsEligible, Omittable<String?>? caaError, }) { return PagesHealthCheckDomain(
  host: host != null ? host() : this.host,
  uri: uri != null ? uri() : this.uri,
  nameservers: nameservers != null ? nameservers() : this.nameservers,
  dnsResolves: dnsResolves != null ? dnsResolves() : this.dnsResolves,
  isProxied: isProxied ?? this.isProxied,
  isCloudflareIp: isCloudflareIp ?? this.isCloudflareIp,
  isFastlyIp: isFastlyIp ?? this.isFastlyIp,
  isOldIpAddress: isOldIpAddress ?? this.isOldIpAddress,
  isARecord: isARecord ?? this.isARecord,
  hasCnameRecord: hasCnameRecord ?? this.hasCnameRecord,
  hasMxRecordsPresent: hasMxRecordsPresent ?? this.hasMxRecordsPresent,
  isValidDomain: isValidDomain != null ? isValidDomain() : this.isValidDomain,
  isApexDomain: isApexDomain != null ? isApexDomain() : this.isApexDomain,
  shouldBeARecord: shouldBeARecord ?? this.shouldBeARecord,
  isCnameToGithubUserDomain: isCnameToGithubUserDomain ?? this.isCnameToGithubUserDomain,
  isCnameToPagesDotGithubDotCom: isCnameToPagesDotGithubDotCom ?? this.isCnameToPagesDotGithubDotCom,
  isCnameToFastly: isCnameToFastly ?? this.isCnameToFastly,
  isPointedToGithubPagesIp: isPointedToGithubPagesIp ?? this.isPointedToGithubPagesIp,
  isNonGithubPagesIpPresent: isNonGithubPagesIpPresent ?? this.isNonGithubPagesIpPresent,
  isPagesDomain: isPagesDomain != null ? isPagesDomain() : this.isPagesDomain,
  isServedByPages: isServedByPages ?? this.isServedByPages,
  isValid: isValid != null ? isValid() : this.isValid,
  reason: reason ?? this.reason,
  respondsToHttps: respondsToHttps != null ? respondsToHttps() : this.respondsToHttps,
  enforcesHttps: enforcesHttps != null ? enforcesHttps() : this.enforcesHttps,
  httpsError: httpsError ?? this.httpsError,
  isHttpsEligible: isHttpsEligible ?? this.isHttpsEligible,
  caaError: caaError ?? this.caaError,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesHealthCheckDomain &&
          host == other.host &&
          uri == other.uri &&
          nameservers == other.nameservers &&
          dnsResolves == other.dnsResolves &&
          isProxied == other.isProxied &&
          isCloudflareIp == other.isCloudflareIp &&
          isFastlyIp == other.isFastlyIp &&
          isOldIpAddress == other.isOldIpAddress &&
          isARecord == other.isARecord &&
          hasCnameRecord == other.hasCnameRecord &&
          hasMxRecordsPresent == other.hasMxRecordsPresent &&
          isValidDomain == other.isValidDomain &&
          isApexDomain == other.isApexDomain &&
          shouldBeARecord == other.shouldBeARecord &&
          isCnameToGithubUserDomain == other.isCnameToGithubUserDomain &&
          isCnameToPagesDotGithubDotCom == other.isCnameToPagesDotGithubDotCom &&
          isCnameToFastly == other.isCnameToFastly &&
          isPointedToGithubPagesIp == other.isPointedToGithubPagesIp &&
          isNonGithubPagesIpPresent == other.isNonGithubPagesIpPresent &&
          isPagesDomain == other.isPagesDomain &&
          isServedByPages == other.isServedByPages &&
          isValid == other.isValid &&
          reason == other.reason &&
          respondsToHttps == other.respondsToHttps &&
          enforcesHttps == other.enforcesHttps &&
          httpsError == other.httpsError &&
          isHttpsEligible == other.isHttpsEligible &&
          caaError == other.caaError; } 
@override int get hashCode { return Object.hashAll([host, uri, nameservers, dnsResolves, isProxied, isCloudflareIp, isFastlyIp, isOldIpAddress, isARecord, hasCnameRecord, hasMxRecordsPresent, isValidDomain, isApexDomain, shouldBeARecord, isCnameToGithubUserDomain, isCnameToPagesDotGithubDotCom, isCnameToFastly, isPointedToGithubPagesIp, isNonGithubPagesIpPresent, isPagesDomain, isServedByPages, isValid, reason, respondsToHttps, enforcesHttps, httpsError, isHttpsEligible, caaError]); } 
@override String toString() { return 'PagesHealthCheckDomain(host: $host, uri: $uri, nameservers: $nameservers, dnsResolves: $dnsResolves, isProxied: $isProxied, isCloudflareIp: $isCloudflareIp, isFastlyIp: $isFastlyIp, isOldIpAddress: $isOldIpAddress, isARecord: $isARecord, hasCnameRecord: $hasCnameRecord, hasMxRecordsPresent: $hasMxRecordsPresent, isValidDomain: $isValidDomain, isApexDomain: $isApexDomain, shouldBeARecord: $shouldBeARecord, isCnameToGithubUserDomain: $isCnameToGithubUserDomain, isCnameToPagesDotGithubDotCom: $isCnameToPagesDotGithubDotCom, isCnameToFastly: $isCnameToFastly, isPointedToGithubPagesIp: $isPointedToGithubPagesIp, isNonGithubPagesIpPresent: $isNonGithubPagesIpPresent, isPagesDomain: $isPagesDomain, isServedByPages: $isServedByPages, isValid: $isValid, reason: $reason, respondsToHttps: $respondsToHttps, enforcesHttps: $enforcesHttps, httpsError: $httpsError, isHttpsEligible: $isHttpsEligible, caaError: $caaError)'; } 
 }
