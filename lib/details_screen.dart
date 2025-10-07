import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic>? recipe;

  const DetailsScreen({Key? key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final r = recipe ?? {};
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(title: Text(r['name'] ?? 'Recipe Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                r['name'] ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '🧂 Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              ...List.generate(
                (r['ingredients'] ?? []).length,
                (i) => Text('• ${r['ingredients'][i]}'),
              ),
              SizedBox(height: 24),
              Text(
                '👩‍🍳 Instructions:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(r['instructions'] ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
