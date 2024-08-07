import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/country_provider.dart';

class SavedCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final savedCountries = Provider.of<CountryProvider>(context).savedCountries;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Countries'),
      ),
      body: ListView.builder(
        itemCount: savedCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(savedCountries[index].flag),
            title: Text(savedCountries[index].name),
            subtitle: Text(savedCountries[index].capital),
          );
        },
      ),
    );
  }
}
