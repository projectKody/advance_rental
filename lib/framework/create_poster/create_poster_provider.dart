import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_demo/framework/create_poster/create_poster_controller.dart';

/// Create Poster Screen Controller
final createPosterProvider =
ChangeNotifierProvider((ref) => CreatePosterController());