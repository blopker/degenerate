// GENERATED CODE - DO NOT MODIFY BY HAND

import 'streams_by_stream_id_request_http.dart';import 'streams_by_stream_id_request_worker_binding.dart';final class StreamsByStreamIdRequest {const StreamsByStreamIdRequest({this.http, this.workerBinding, });

factory StreamsByStreamIdRequest.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdRequest(
  http: json['http'] != null ? StreamsByStreamIdRequestHttp.fromJson(json['http'] as Map<String, dynamic>) : null,
  workerBinding: json['worker_binding'] != null ? StreamsByStreamIdRequestWorkerBinding.fromJson(json['worker_binding'] as Map<String, dynamic>) : null,
); }

final StreamsByStreamIdRequestHttp? http;

final StreamsByStreamIdRequestWorkerBinding? workerBinding;

Map<String, dynamic> toJson() { return {
  if (http != null) 'http': http?.toJson(),
  if (workerBinding != null) 'worker_binding': workerBinding?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'http', 'worker_binding'}.contains(key)); } 
StreamsByStreamIdRequest copyWith({StreamsByStreamIdRequestHttp Function()? http, StreamsByStreamIdRequestWorkerBinding Function()? workerBinding, }) { return StreamsByStreamIdRequest(
  http: http != null ? http() : this.http,
  workerBinding: workerBinding != null ? workerBinding() : this.workerBinding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdRequest &&
          http == other.http &&
          workerBinding == other.workerBinding; } 
@override int get hashCode { return Object.hash(http, workerBinding); } 
@override String toString() { return 'StreamsByStreamIdRequest(http: $http, workerBinding: $workerBinding)'; } 
 }
