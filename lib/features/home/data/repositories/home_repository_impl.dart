import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/core/constant/api_endpoints.dart';

import '../../../../core/services/api_services/api_services.dart';
import '../../domain/repositories/home_repository.dart';
import '../model/home_banner.dart';
import '../model/home_product_model.dart';
import '../model/home_user_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiService _apiService;

  HomeRepositoryImpl(this._apiService);

  @override
  Future<List<HomeBanner>> fetchBanners() async {
    try {
      final Response response = await _apiService.get(ApiEndPoints.getBanners);
      final List data = response.data['banners'];
      return data.map((e) => HomeBanner.fromJson(e)).toList();
    } catch (e) {
      return dummyBanners;
    }
  }

  @override
  Future<List<HomeProduct>> fetchProducts() async {
    try {
      final Response response = await _apiService.get(ApiEndPoints.getProducts);
      final List data = response.data['products'];
      return data.map((e) => HomeProduct.fromJson(e)).toList();
    } catch (e) {
      return dummyProducts;
    }
  }

  @override
  Future<List<HomeUser>> fetchUsers() async {
    try {
      final Response response = await _apiService.get(ApiEndPoints.getUsers);
      final List data = response.data['users'];
      return data.map((e) => HomeUser.fromJson(e)).toList();
    } catch (e) {
      return dummyUsers;
    }
  }
}
