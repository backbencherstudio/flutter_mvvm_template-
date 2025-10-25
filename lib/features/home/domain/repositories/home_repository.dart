import '../../data/model/home_banner.dart';
import '../../data/model/home_product_model.dart';
import '../../data/model/home_user_model.dart';

abstract class HomeRepository {
  Future<List<HomeBanner>> fetchBanners();
  Future<List<HomeProduct>> fetchProducts();
  Future<List<HomeUser>> fetchUsers();
}
