import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/seo.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  void initState() {
    super.initState();
    SeoHelper.set(
      title: 'O nás – PolyBag',
      description: 'Příběh značky PolyBag. Udržitelné produkty z recyklovaných bigbagů, Hradec Králové.',
    );
  }

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('O nás')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('PolyBag', style: theme.textTheme.headlineMedium),
          const SizedBox(height: 12),
          Text(
            'Vyrábíme podsedáky a sedací pytle z recyklovaných polypropylenových bigbagů. '
            'Každý výrobek vzniká v lokální chráněné dílně Daneta, která zaměstnává osoby se zdravotním postižením.',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          Text('Kontakt', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: const Text('polybag.ja@email.cz'),
            onTap: () => _launch('mailto:polybag.ja@email.cz'),
            contentPadding: EdgeInsets.zero,
          ),
          const ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Pospíšilova 365, 500 03 Hradec Králové'),
            contentPadding: EdgeInsets.zero,
          ),
          const SizedBox(height: 24),
          Text('Sledujte nás', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            children: [
              OutlinedButton.icon(
                onPressed: () => _launch('https://www.instagram.com/polybag.ja'),
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('Instagram'),
              ),
              OutlinedButton.icon(
                onPressed: () => _launch('https://www.youtube.com/@polybagja'),
                icon: const Icon(Icons.play_circle_outline),
                label: const Text('YouTube'),
              ),
              OutlinedButton.icon(
                onPressed: () => _launch('https://www.tiktok.com/@polybag.ja'),
                icon: const Icon(Icons.music_note_outlined),
                label: const Text('TikTok'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Daneta', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Text(
            'Koupí produktu podporujete chráněnou dílnu Daneta – organizaci pomáhající osobám s hendikepem.',
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
