import 'package:flutter/material.dart';
import 'package:flutter_architecture_bloc/sampleproject/blocs/bloc_provider.dart';
import 'package:flutter_architecture_bloc/sampleproject/blocs/favorite_bloc.dart';
import 'package:flutter_architecture_bloc/sampleproject/models/movie_card.dart';
import 'package:flutter_architecture_bloc/sampleproject/widgets/movie_details_widget.dart';

class DetailsPage extends StatelessWidget{
  DetailsPage({
    Key key,
    this.data,
  }) : super(key: key);

  final MovieCard data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: MovieDetailsWidget(
        movieCard: data,
        favoritesStream: BlocProvider.of<FavoriteBloc>(context).outFavorites,
      ),
    );
  }
}