import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/card_swiper.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //Tarjetas principales
            CardSwiper( 
              movies: moviesProvider.onDisplayMovies   
            ),

            //Slider de películas
            MovieSlider(
              movies: moviesProvider.popularMovies,  //Populares,
              title: 'Populares',
              onNextPage: () => { moviesProvider.getPopularMovies()},  //Opcional
            ),
          ],
        )));
  }
}
