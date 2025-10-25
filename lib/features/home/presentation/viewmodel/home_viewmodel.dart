import 'package:flutter/foundation.dart';

import '../../data/model/home_banner.dart';
import '../../data/model/home_product_model.dart';
import '../../data/model/home_user_model.dart';
import '../../domain/repositories/home_repository.dart';


class HomeViewModel extends ChangeNotifier {
  final HomeRepository _repository;

  HomeViewModel(this._repository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<HomeBanner> _banners = [];
  List<HomeProduct> _products = [];
  List<HomeUser> _users = [];

  List<HomeBanner> get banners => _banners;
  List<HomeProduct> get products => _products;
  List<HomeUser> get users => _users;

  Future<void> loadAllData() async {
    _isLoading = true;
    notifyListeners();

    try {
      final results = await Future.wait([
        _repository.fetchBanners(),
        _repository.fetchProducts(),
        _repository.fetchUsers(),
      ]);

      _banners = results[0] as List<HomeBanner>;
      _products = results[1] as List<HomeProduct>;
      _users = results[2] as List<HomeUser>;
    } catch (e) {
      if (kDebugMode) print("Error loading home data: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshProducts() async {
    _products = await _repository.fetchProducts();
    notifyListeners();
  }

  Future<void> refreshUsers() async {
    _users = await _repository.fetchUsers();
    notifyListeners();
  }

  Future<void> refreshBanners() async {
    _banners = await _repository.fetchBanners();
    notifyListeners();
  }
}
