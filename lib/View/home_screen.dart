import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/country_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<CountryProvider>(context, listen: false).fetchCountries();
  }

  @override
  Widget build(BuildContext context) {
    final countries = Provider.of<CountryProvider>(context).countries;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              Navigator.of(context).pushNamed('/saved');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(countries[index].flag),
            title: Text(countries[index].name),
            subtitle: Text(countries[index].capital),
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/detail', arguments: countries[index]);
            },
          );
        },
      ),
    );
  }
}