import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  void onChange(BlocBase bloc, Change change) {
    debugPrint("change=$change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("close=$bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("create=$bloc");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }
}
