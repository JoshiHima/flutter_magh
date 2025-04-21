

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/products/domain/product.dart';
import 'package:magh/features/shared/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository.g.dart';


class ProductRepository{
  
  final Dio dio;
  ProductRepository(this.dio); //making the constructor

  Future<List<Product>> getProducts() async{
    try{
      final response = await dio.get('https://dummyjson.com/products');

      // response.data is initially the map full, then we convert it in list to access
      return (response.data['products'] as List).map((product){ // product vaneko "products" vitra ko single single map
        return Product.fromJson(product); // fromJson is called to product ko instance banaauna lai
      }).toList();
    }catch(error){
      throw 'Something went wrong';
    }
  }

  Future<ProductInfo> getProductDetail(int id) async{  // single map return garxa tesaile Future vitra Product use garko
    try{
      final response = await dio.get('https://dummyjson.com/products/$id');

      // response.data is initially the map full, then we convert it in list to access
      return ProductInfo.fromJson(response.data); // directly it comes in map
    }catch(error){
      throw 'Something went wrong';
    }
  }
}


@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepository(ref.watch(clientProvider));  // returns the instance of Product Repository which is Dio
}