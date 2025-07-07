import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';
import 'package:app_chat_flu/features/data/chat_api.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ChatApiService apiService;

  HomeBloc({required this.apiService}) : super(const HomeInitial(messages: [])) {
    on<SendMessageEvent>((event, emit) async {
      final userMessage = "Tú: ${event.message}";
      final previousMessages = state.messages;

      emit(HomeLoading(messages: [...previousMessages, userMessage]));

      try {
        final response = await apiService.enviarMensaje(event.message);
        final botMessage = "GPT: $response";

        emit(HomeLoaded(messages: [
          ...previousMessages,
          userMessage,
          botMessage,
        ]));
      } catch (e) {
        emit(HomeError(
          messages: [...previousMessages, userMessage],
          error: e.toString(),
        ));
      }
    });
  }
}
