import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/products/data/product_repository.dart';
import 'package:magh/features/products/presentation/controllers/product_controller.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productInfoState = ref.watch(getProductDetailsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.refresh(getProductDetailsProvider.future);
        },
        child: productInfoState.when(
          data: (data) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image (only first image)
                  if (data.images.isNotEmpty)
                    _buildImageCard('Product Image', data.images.first),

                  // Thumbnail
                  _buildImageCard('Thumbnail', data.thumbnail),

                  // Info Cards
                  _buildInfoCard('Title', data.title),
                  _buildInfoCard('Description', data.description),
                  _buildInfoCard('Category', data.category),
                  _buildInfoCard('Price', '\$${data.price}'),
                  _buildInfoCard('Stock', data.stock.toString()),
                  _buildInfoCard('Rating', data.rating.toString()),
                  _buildInfoCard('Discount', '${data.discountPercentage}%'),
                  _buildInfoCard('Tags', data.tags.join(', ')),
                  _buildInfoCard('Brand', data.brand),
                  _buildInfoCard('SKU', data.sku),
                  _buildInfoCard(
                    'Dimensions',
                    '${data.dimensions.width} x ${data.dimensions.height} x ${data.dimensions.depth} cm',
                  ),
                  _buildInfoCard('Warranty', data.warrantyInformation),
                  _buildInfoCard('Shipping', data.shippingInformation),
                  _buildInfoCard('Return Policy', data.returnPolicy),
                  _buildInfoCard('Min Order Quantity', data.minimumOrderQuantity.toString()),
                ],
              ),
            );
          },
          error: (err, stack) => Center(child: Text('Error: $err')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  // Info Card
  Card _buildInfoCard(String label, String value) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                label,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: Text(
                value,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Image Card with loading indicator
  Card _buildImageCard(String label, String imageUrl) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Failed to load image', style: TextStyle(color: Colors.red)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
