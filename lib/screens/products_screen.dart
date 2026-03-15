import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  Future<void> _openShop() async {
    final uri = Uri.parse('https://polybag.cz/?page_id=48');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Nabídka produktů')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Naše produkty',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'Podsedáky a sedací pytle z recyklovaných bigbagů, vyráběné v chráněné dílně Daneta.',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _openShop,
            icon: const Icon(Icons.open_in_new),
            label: const Text('Přejít do e-shopu'),
          ),
          // TODO: add product cards with images pulled from WooCommerce or hardcoded
        ],
      ),
    );
  }
}
