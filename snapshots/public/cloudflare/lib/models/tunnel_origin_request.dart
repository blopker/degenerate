// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tunnel_origin_request_access.dart';/// Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
final class TunnelOriginRequest {const TunnelOriginRequest({this.access, this.caPool, this.connectTimeout, this.disableChunkedEncoding, this.http2Origin, this.httpHostHeader, this.keepAliveConnections, this.keepAliveTimeout, this.matchSnItoHost, this.noHappyEyeballs, this.noTlsVerify, this.originServerName, this.proxyType, this.tcpKeepAlive, this.tlsTimeout, });

factory TunnelOriginRequest.fromJson(Map<String, dynamic> json) { return TunnelOriginRequest(
  access: json['access'] != null ? TunnelOriginRequestAccess.fromJson(json['access'] as Map<String, dynamic>) : null,
  caPool: json['caPool'] as String?,
  connectTimeout: json['connectTimeout'] != null ? (json['connectTimeout'] as num).toInt() : null,
  disableChunkedEncoding: json['disableChunkedEncoding'] as bool?,
  http2Origin: json['http2Origin'] as bool?,
  httpHostHeader: json['httpHostHeader'] as String?,
  keepAliveConnections: json['keepAliveConnections'] != null ? (json['keepAliveConnections'] as num).toInt() : null,
  keepAliveTimeout: json['keepAliveTimeout'] != null ? (json['keepAliveTimeout'] as num).toInt() : null,
  matchSnItoHost: json['matchSNItoHost'] as bool?,
  noHappyEyeballs: json['noHappyEyeballs'] as bool?,
  noTlsVerify: json['noTLSVerify'] as bool?,
  originServerName: json['originServerName'] as String?,
  proxyType: json['proxyType'] as String?,
  tcpKeepAlive: json['tcpKeepAlive'] != null ? (json['tcpKeepAlive'] as num).toInt() : null,
  tlsTimeout: json['tlsTimeout'] != null ? (json['tlsTimeout'] as num).toInt() : null,
); }

/// For all L7 requests to this hostname, cloudflared will validate each request's Cf-Access-Jwt-Assertion request header.
final TunnelOriginRequestAccess? access;

/// Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare.
final String? caPool;

/// Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by tlsTimeout.
final int? connectTimeout;

/// Disables chunked transfer encoding. Useful if you are running a WSGI server.
final bool? disableChunkedEncoding;

/// Attempt to connect to origin using HTTP2. Origin must be configured as https.
final bool? http2Origin;

/// Sets the HTTP Host header on requests sent to the local service.
final String? httpHostHeader;

/// Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections.
final int? keepAliveConnections;

/// Timeout after which an idle keepalive connection can be discarded.
final int? keepAliveTimeout;

/// Auto configure the Hostname on the origin server certificate.
final bool? matchSnItoHost;

/// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols.
final bool? noHappyEyeballs;

/// Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted.
final bool? noTlsVerify;

/// Hostname that cloudflared should expect from your origin server certificate.
final String? originServerName;

/// cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Valid options are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
/// 
final String? proxyType;

/// The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server.
final int? tcpKeepAlive;

/// Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server.
final int? tlsTimeout;

Map<String, dynamic> toJson() { return {
  if (access != null) 'access': access?.toJson(),
  'caPool': ?caPool,
  'connectTimeout': ?connectTimeout,
  'disableChunkedEncoding': ?disableChunkedEncoding,
  'http2Origin': ?http2Origin,
  'httpHostHeader': ?httpHostHeader,
  'keepAliveConnections': ?keepAliveConnections,
  'keepAliveTimeout': ?keepAliveTimeout,
  'matchSNItoHost': ?matchSnItoHost,
  'noHappyEyeballs': ?noHappyEyeballs,
  'noTLSVerify': ?noTlsVerify,
  'originServerName': ?originServerName,
  'proxyType': ?proxyType,
  'tcpKeepAlive': ?tcpKeepAlive,
  'tlsTimeout': ?tlsTimeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TunnelOriginRequest copyWith({TunnelOriginRequestAccess Function()? access, String Function()? caPool, int Function()? connectTimeout, bool Function()? disableChunkedEncoding, bool Function()? http2Origin, String Function()? httpHostHeader, int Function()? keepAliveConnections, int Function()? keepAliveTimeout, bool Function()? matchSnItoHost, bool Function()? noHappyEyeballs, bool Function()? noTlsVerify, String Function()? originServerName, String Function()? proxyType, int Function()? tcpKeepAlive, int Function()? tlsTimeout, }) { return TunnelOriginRequest(
  access: access != null ? access() : this.access,
  caPool: caPool != null ? caPool() : this.caPool,
  connectTimeout: connectTimeout != null ? connectTimeout() : this.connectTimeout,
  disableChunkedEncoding: disableChunkedEncoding != null ? disableChunkedEncoding() : this.disableChunkedEncoding,
  http2Origin: http2Origin != null ? http2Origin() : this.http2Origin,
  httpHostHeader: httpHostHeader != null ? httpHostHeader() : this.httpHostHeader,
  keepAliveConnections: keepAliveConnections != null ? keepAliveConnections() : this.keepAliveConnections,
  keepAliveTimeout: keepAliveTimeout != null ? keepAliveTimeout() : this.keepAliveTimeout,
  matchSnItoHost: matchSnItoHost != null ? matchSnItoHost() : this.matchSnItoHost,
  noHappyEyeballs: noHappyEyeballs != null ? noHappyEyeballs() : this.noHappyEyeballs,
  noTlsVerify: noTlsVerify != null ? noTlsVerify() : this.noTlsVerify,
  originServerName: originServerName != null ? originServerName() : this.originServerName,
  proxyType: proxyType != null ? proxyType() : this.proxyType,
  tcpKeepAlive: tcpKeepAlive != null ? tcpKeepAlive() : this.tcpKeepAlive,
  tlsTimeout: tlsTimeout != null ? tlsTimeout() : this.tlsTimeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelOriginRequest &&
          access == other.access &&
          caPool == other.caPool &&
          connectTimeout == other.connectTimeout &&
          disableChunkedEncoding == other.disableChunkedEncoding &&
          http2Origin == other.http2Origin &&
          httpHostHeader == other.httpHostHeader &&
          keepAliveConnections == other.keepAliveConnections &&
          keepAliveTimeout == other.keepAliveTimeout &&
          matchSnItoHost == other.matchSnItoHost &&
          noHappyEyeballs == other.noHappyEyeballs &&
          noTlsVerify == other.noTlsVerify &&
          originServerName == other.originServerName &&
          proxyType == other.proxyType &&
          tcpKeepAlive == other.tcpKeepAlive &&
          tlsTimeout == other.tlsTimeout; } 
@override int get hashCode { return Object.hash(access, caPool, connectTimeout, disableChunkedEncoding, http2Origin, httpHostHeader, keepAliveConnections, keepAliveTimeout, matchSnItoHost, noHappyEyeballs, noTlsVerify, originServerName, proxyType, tcpKeepAlive, tlsTimeout); } 
@override String toString() { return 'TunnelOriginRequest(access: $access, caPool: $caPool, connectTimeout: $connectTimeout, disableChunkedEncoding: $disableChunkedEncoding, http2Origin: $http2Origin, httpHostHeader: $httpHostHeader, keepAliveConnections: $keepAliveConnections, keepAliveTimeout: $keepAliveTimeout, matchSnItoHost: $matchSnItoHost, noHappyEyeballs: $noHappyEyeballs, noTlsVerify: $noTlsVerify, originServerName: $originServerName, proxyType: $proxyType, tcpKeepAlive: $tcpKeepAlive, tlsTimeout: $tlsTimeout)'; } 
 }
