

import 'package:dio/dio.dart';
import 'package:magh/features/products/domain/product.dart';

class ProductRepository{
  
  final dio = Dio();
  
  Future<List<Product>> getProducts() async{
    try{
      final response = await dio.get('https://dummyjson.com/products');

      // response.data is initlaay the map full, then we convert it in list to access
      return (response.data['products'] as List).map((product){ // product vaneko "products" vitra ko single single map
        return Product.fromJson(product); // fromJson is called to product ko instance banaauna lai
      }).toList();
    }catch(error){
      throw 'Something went wrong';
    }
  }
}