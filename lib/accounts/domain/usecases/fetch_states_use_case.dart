import 'package:websearch/accounts/domain/entities/account.dart';
import 'package:websearch/accounts/domain/repo_interfaces/accounts_repository.dart';

class FetchStatesUseCase{
  final AccountsRepository accountsRepository;

  const FetchStatesUseCase({
    required this.accountsRepository,
  });

  Future<List<String>> call(){
    try{
      return accountsRepository.fetchStates();
    }
    catch(_){
      rethrow;
    }

  }
}