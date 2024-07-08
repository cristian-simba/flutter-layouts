import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            Text('Ubicaciones'),
            TextSection(description: 'Disfruta de una vista panorámica impresionante de la ciudad desde este prominente cerro coronado por la estatua de la Virgen de Quito.'),
            TitleSection(name: "Parque Nacional Galápagos", location: "Galápagos"),
            ImageSection(image: 'images/galapagos.jpg'),
            TextSection(description: 'Sumérgete en la biodiversidad única y paisajes espectaculares que inspiraron a Charles Darwin en su teoría de la evolución.'),
            ButtonSection(),
            TitleSection(name: "El Panecillo", location: "Quito"),
            ImageSection(image: 'images/panecillo.jpg'),
            ButtonSection(),
            TitleSection(name: "Mitad del Mundo", location: "Quito"),
            ImageSection(image: 'images/mitad.jpeg'),
            ButtonSection(),
            TextSection(description: 'Descubre el monumento emblemático que marca la línea ecuatorial en Ecuador, simbolizando la división entre el hemisferio norte y el hemisferio sur.'),
            TitleSection(name: "Parque de las Iguanas", location: "Guayaquil"),
            ImageSection(image: 'images/iguanas.jpg'),
            ButtonSection(),
            TextSection(description: 'Experimenta la convivencia única con iguanas terrestres en este parque urbano, donde la fauna local se mezcla con la vida diaria de la ciudad.'),
            TitleSection(name: "Parque Nacional Cotopaxi", location: "Cotopaxi"),
            ImageSection(image: 'images/cotopaxi.jpg'),
            ButtonSection(),
            TextSection(description: 'Contempla el majestuoso volcán Cotopaxi y explora paisajes andinos impresionantes, ideales para actividades al aire libre y observación de vida silvestre.'),
          ],
        )),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}
