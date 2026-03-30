// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountTokenIceServers {const AccountTokenIceServers({this.credential, this.username, this.url, this.urls, });

factory AccountTokenIceServers.fromJson(Map<String, dynamic> json) { return AccountTokenIceServers(
  credential: json['credential'] as String?,
  username: json['username'] as String?,
  url: json['url'] as String?,
  urls: json['urls'] as String?,
); }

final String? credential;

final String? username;

final String? url;

final String? urls;

Map<String, dynamic> toJson() { return {
  'credential': ?credential,
  'username': ?username,
  'url': ?url,
  'urls': ?urls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'credential', 'username', 'url', 'urls'}.contains(key)); } 
AccountTokenIceServers copyWith({String Function()? credential, String Function()? username, String Function()? url, String Function()? urls, }) { return AccountTokenIceServers(
  credential: credential != null ? credential() : this.credential,
  username: username != null ? username() : this.username,
  url: url != null ? url() : this.url,
  urls: urls != null ? urls() : this.urls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountTokenIceServers &&
          credential == other.credential &&
          username == other.username &&
          url == other.url &&
          urls == other.urls; } 
@override int get hashCode { return Object.hash(credential, username, url, urls); } 
@override String toString() { return 'AccountTokenIceServers(credential: $credential, username: $username, url: $url, urls: $urls)'; } 
 }
