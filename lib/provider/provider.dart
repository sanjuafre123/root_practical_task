import 'package:flutter/cupertino.dart';
import '../Modal/carousel_modal.dart';
import '../Modal/category_modal.dart';
import '../Modal/categorywise_modal.dart';
import '../api_helper/api_helper.dart';

class EComProvider extends ChangeNotifier {
  CategoryWiseModal? categoryWiseModal;
  List<CarouselModal> carouselModal = [];
  CategoryModal? categoryModal;
  ApiHelper apiHelper = ApiHelper();

  Future<CategoryWiseModal?> fetchUsers(String categoryId) async {
    Map<String, dynamic> data = await apiHelper.fetchApiData(categoryId);
    categoryWiseModal = CategoryWiseModal.fromJson(data);
    return categoryWiseModal;
  }

  Future<CategoryModal?> fetchCategories() async {
    Map<String, dynamic> data = await apiHelper.fetchApiDataOfCategories();
    categoryModal = CategoryModal.fromJson(data);
    return categoryModal;
  }

  Future<List<CarouselModal>> fetchCarousel() async {
    List data = await apiHelper.fetchApiDataOfCarousel();
    carouselModal = data
        .map(
          (e) => CarouselModal.fromJson(e),
        )
        .toList();
    return carouselModal;
  }
}
