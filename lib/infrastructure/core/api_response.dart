
class ApiResponse {
  dynamic data;
  Meta meta;

  ApiResponse({
    required this.data,
    required this.meta,
  });

  factory ApiResponse.fromMap(Map<String, dynamic> map) => ApiResponse(
        data: map['data'],
        meta: Meta.fromMap(map['meta']),
      );

  @override
  String toString() {
    return 'ApiResponse{'
        'data: $data,'
        'meta: ${meta.toString()}';
  }
}

class Meta {
  String msg;
  int status;
  bool error;
  String responseTime;

  Meta({
    required this.msg,
    required this.status,
    required this.error,
    required this.responseTime,
  });

  factory Meta.fromMap(Map<String, dynamic> map) => Meta(
        msg: map['msg'],
        status: map['status'],
        error: map['error'],
        responseTime: map['response_time'],
      );

  @override
  String toString() {
    return '{'
        'msg: $msg,'
        'status: $status,'
        'error: $error,'
        'responseTime: $responseTime'
        '}';
  }
}
