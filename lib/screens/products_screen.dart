import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/seo.dart';
import '../lang/app_localizations.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});
  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    SeoHelper.set(
      title: 'Nabídka produktů – PolyBag',
      description: 'Podsedáky a sedací pytle z recyklovaných bigbagů. Vyráběno v chráněné dílně Daneta.',
    );
  }

  Future<void> _openShop() async {
    final uri = Uri.parse('https://polybag.cz/?page_id=48');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(loc.products)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(loc.productsHeading, style: theme.textTheme.headlineMedium),
          const SizedBox(height: 12),
          Text(loc.productsDesc, style: theme.textTheme.bodyMedium),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _openShop,
            icon: const Icon(Icons.open_in_new),
            label: Text(loc.goToShop),
          ),
        ],
      ),
    );
  }
}
