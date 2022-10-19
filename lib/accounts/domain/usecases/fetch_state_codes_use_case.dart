import 'package:websearch/accounts/domain/entities/account.dart';
import 'package:websearch/accounts/domain/repo_interfaces/accounts_repository.dart';

class FetchStateCodesUseCase{
  final AccountsRepository accountsRepository;

  const FetchStateCodesUseCase({
    required this.accountsRepository,
  });

  Future<List<String>> call(){
    try{
      return accountsRepository.fetchStateCodes();
    }
    catch(_){
      rethrow;
    }

  }
}