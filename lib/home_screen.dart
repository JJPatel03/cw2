import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Paneer Tikka Masala',
      'ingredients': [
        'Paneer cubes',
        'Yogurt',
        'Tomato puree',
        'Onion',
        'Garlic',
        'Garam masala',
        'Cream'
      ],
      'instructions':
          '1. Marinate paneer in yogurt and spices.\n'
          '2. Grill until golden.\n'
          '3. Prepare tomato-based gravy.\n'
          '4. Add paneer and simmer for 5 mins.\n'
          '5. Serve with naan or rice.'
    },
    {
      'name': 'Chole (Chickpea Curry)',
      'ingredients': [
        'Chickpeas',
        'Onion',
        'Tomato',
        'Garlic',
        'Ginger',
        'Cumin',
        'Coriander powder'
      ],
      'instructions':
          '1. Soak and boil chickpeas.\n'
          '2. Sauté onion, garlic, and ginger.\n'
          '3. Add spices and tomato puree.\n'
          '4. Mix chickpeas and cook until thick.\n'
          '5. Serve with bhature or rice.'
    },
    {
      'name': 'Butter Chicken',
      'ingredients': [
        'Chicken',
        'Butter',
        'Tomato puree',
        'Cream',
        'Ginger garlic paste',
        'Spices'
      ],
      'instructions':
          '1. Marinate chicken in yogurt and spices.\n'
          '2. Grill the chicken.\n'
          '3. Make butter-tomato gravy.\n'
          '4. Add chicken and cream.\n'
          '5. Simmer and serve with naan.'
    },
    {
      'name': 'Enchiladas',
      'ingredients': [
        'Tortillas',
        'Shredded chicken or beef',
        'Cheese',
        'Enchilada sauce',
        'Onion',
        'Beans'
      ],
      'instructions':
          '1. Fill tortillas with chicken, beans, and cheese.\n'
          '2. Roll and place in a baking dish.\n'
          '3. Pour enchilada sauce over them.\n'
          '4. Sprinkle cheese and bake until melted.\n'
          '5. Garnish with cilantro and serve.'
    },
    {
      'name': 'Pupusas',
      'ingredients': [
        'Masa harina (corn flour)',
        'Water',
        'Cheese',
        'Refried beans',
        'Chicharrón (optional)',
        'Cabbage slaw (curtido)'
      ],
      'instructions':
          '1. Mix masa harina with water to form dough.\n'
          '2. Stuff with beans, cheese, or meat.\n'
          '3. Seal and flatten into a thick tortilla.\n'
          '4. Cook on a hot griddle until golden on both sides.\n'
          '5. Serve with curtido and tomato salsa.'
    },
    {
      'name': 'Fettuccine Alfredo',
      'ingredients': [
        'Fettuccine pasta',
        'Butter',
        'Heavy cream',
        'Parmesan cheese',
        'Garlic',
        'Salt and pepper'
      ],
      'instructions':
          '1. Cook fettuccine until al dente.\n'
          '2. In a pan, melt butter and sauté garlic.\n'
          '3. Add cream and simmer.\n'
          '4. Stir in Parmesan cheese.\n'
          '5. Mix pasta with sauce and serve warm.'
    },
    {
      'name': 'Spaghetti',
      'ingredients': [
        'Spaghetti pasta',
        'Tomato sauce',
        'Garlic',
        'Olive oil',
        'Basil',
        'Ground beef or meatballs'
      ],
      'instructions':
          '1. Boil spaghetti until tender.\n'
          '2. In a pan, cook garlic in olive oil.\n'
          '3. Add tomato sauce and simmer.\n'
          '4. Add cooked meatballs or ground beef.\n'
          '5. Combine with spaghetti and serve with Parmesan.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(title: Text('Jay\'s Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            color: Colors.orange[100],
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              title: Text(recipe['name'],
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
