import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/products/presentation/controllers/product_controller.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productInfoState = ref.watch(getProductDetailsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.refresh(getProductDetailsProvider.future);
        },
        child: productInfoState.when(
          data: (data) {
            return ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildInfoCard('Title', data.title),
                _buildInfoCard('Description', data.description),
                _buildInfoCard('Category', data.category),
                _buildInfoCard('Price', '\$${data.price.toString()}'),
                _buildInfoCard('Stock', data.stock.toString()),
                _buildInfoCard('Rating', data.rating.toString()),
                _buildInfoCard('Discount', '${data.discountPercentage}%'),
                _buildInfoCard('Tags', data.tags.join(', ')),
                _buildInfoCard('Brand', data.brand),
                _buildInfoCard('SKU', data.sku),
                _buildInfoCard('Dimensions', (data.dimensions).toString()),
                _buildInfoCard('Weight', '${data.warrantyInformation} kg'),
                _buildInfoCard('Warranty', data.warrantyInformation),
                _buildInfoCard('Shipping', data.shippingInformation.toString()),
                _buildInfoCard('Return Policy', data.returnPolicy),
                _buildInfoCard('Min Order Quantity', data.minimumOrderQuantity.toString()),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.images.length,  // Length of images list
                  itemBuilder: (context, index) {  // 'index' is available here
                    return _buildImageCard('Product Image', data.images[index]); // Access the image URL directly
                  },
                ),
                _buildImageCard('Thumbnail', data.thumbnail),
              ],
            );
          },
          error: (err, stack) => Center(child: Text('$err')),
          loading: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  // Generalized Card Builder for text content
  Card _buildInfoCard(String title, String content) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 8),
            Text(content, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  // Generalized Image Card Builder
  Card _buildImageCard(String title, String imageUrl) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 8),
            Image.network(imageUrl, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
