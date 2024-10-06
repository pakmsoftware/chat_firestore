import 'package:chat_firestore/core/router/auto_route_injector.dart';
import 'package:chat_firestore/features/firebase/firebase_injection_container.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

const globalDio = 'global';

class InjectionContainer extends Injector
    with AutoRouteInjector, FirebaseInjectionContainer {}

abstract class Injector {
  @mustCallSuper
  Future<void> init() async {
    sl.registerLazySingleton<Dio>(
      () {
        final dio = Dio(BaseOptions(
          baseUrl: '',
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
        ));

        return dio;
      },
      instanceName: globalDio,
    );
  }
}
