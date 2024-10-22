import 'dart:async';

import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final List<String> _imagePaths = [
    moto1,
    moto2,
    moto3,
    moto4,
  ];
  late Timer _timer;

  IconProvider() {
    _startLoop();
  }

  int get currentIndex => _currentIndex;

  String get currentImagePath => _imagePaths[_currentIndex];

  String get nextImagePath =>
      _imagePaths[(_currentIndex + 1) % _imagePaths.length];

  void _startLoop() {
    const loopDuration = Duration(seconds: 4); // Change duration as needed
    _timer = Timer.periodic(loopDuration, (_) {
      _currentIndex = (_currentIndex + 1) % _imagePaths.length;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
