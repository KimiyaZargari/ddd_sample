import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/core/enums.dart';
import 'package:ddd_sample/infrastructure/core/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/core/failures.dart';

//this will be overridden when token is gotten
final httpServiceProvider = StateProvider((ref) => HttpService(null));

class HttpService {
  final String? token;

  late Dio _dio;

  HttpService(this.token) {
    _dio = Dio(BaseOptions(headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.acceptHeader: 'application/json',
    }, baseUrl: ApiRoutes.base));

  }

  Future<Either<NetworkFailure, dynamic>> get(
    String path, {
    Map<String, dynamic>? parameters,
    CancelToken? cancelToken,
    bool? isV3,
  }) async {
    Response response;


    try {
      response = await _dio.get(
        path,
        queryParameters: parameters,
      );
    } on DioError catch (e) {
      if (e.response!.statusCode == 401) {
        return left(const UnauthenticatedUser('unauthenticated'));
      } else if (e.response!.statusCode == 403) {
        return left(UnverifiedUser(
            message: 'User unverified',
            email: (((e.response?.data as Map<String, dynamic>?))?['email'] as String?) == null
                ? null
                : (((e.response?.data as Map<String, dynamic>?))?['email'] as String),
            userType:
                (((e.response?.data as Map<String, dynamic>?))?['is_business'] as bool?) == null
                    ? null
                    : (((e.response?.data as Map<String, dynamic>?))?['is_business'] as bool)
                        ? UserType.business
                        : UserType.influencer));
      } else if (e.response!.statusCode == 404) {
        return left(const NotFound('There is no account registered with this email'));
      } else if (e.response!.statusCode == 409) {
        return left(const BadRequest('conflicting data'));
      } else if (e.response!.statusCode == 422) {
        return left(UnprocessableEntity(json.encode(e.response!.data!)));
      }
      return left(const NetworkFailure.serverError(''));
    }
    if ((response.data['status'] is int && response.data['status'] ~/ 100 != 2) ||
        (response.data['status'] is bool && response.data['status'] == false)) {
      return left(const NetworkFailure.serverError(''));
    } else {
      return right((response.data as Map<String, dynamic>));
    }
  }

  Future<Either<NetworkFailure, dynamic>> post(
    String path, {
    dynamic data,
    bool? isV3,
  }) async {
    Response response;

    try {
      response = await _dio.post(
        path,
        data: data,
      );
    } on DioError catch (e) {
      print('dio error');
      print(e.response);
      print(e.response?.statusCode);
      if (e.response?.statusCode == 401) {
        return left(const UnauthenticatedUser('user unauthenticated'));
      } else if (e.response!.statusCode == 403) {
        return left(UnverifiedUser(
            message: 'User unverified',
            email: (((e.response?.data as Map<String, dynamic>?))?['email'] as String?) == null
                ? null
                : (((e.response?.data as Map<String, dynamic>?))?['email'] as String),
            userType:
                (((e.response?.data as Map<String, dynamic>?))?['is_business'] as bool?) == null
                    ? null
                    : (((e.response?.data as Map<String, dynamic>?))?['is_business'] as bool)
                        ? UserType.business
                        : UserType.influencer));
      } else if (e.response?.statusCode == 404 || e.response?.statusCode == 400) {
        return left(const NotFound('There is no account registered with this email'));
      } else if (e.response?.statusCode == 409) {
        return left(const BadRequest('conflicting data'));
      } else if (e.response?.statusCode == 422) {
        return left(UnprocessableEntity(json.encode(e.response!.data!)));
      }
      return left(NetworkFailure.serverError(
          e.response?.toString() ?? 'unknown error occurred, please try again!'));
    }
    if ((response.data['status'] is int && response.data['status'] ~/ 100 != 2) ||
        (response.data['status'] is bool && response.data['status'] == false)) {
      return left(const NetworkFailure.serverError(''));
    } else {
      return right((response.data as Map<String, dynamic>));
    }
  }
}
