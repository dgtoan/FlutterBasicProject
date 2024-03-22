import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver extends BlocObserver {
  const SimpleBlocObserver();

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    debugPrint('toan: ${transition.toString()}');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('toan: ${error.toString()}');
    super.onError(bloc, error, stackTrace);
  }
}