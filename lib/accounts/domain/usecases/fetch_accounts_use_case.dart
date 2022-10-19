import 'package:websearch/accounts/domain/entities/account.dart';
import 'package:websearch/accounts/domain/repo_interfaces/accounts_repository.dart';

class FetchAccountsUseCase{
  final AccountsRepository accountsRepository;

  const FetchAccountsUseCase({
    required this.accountsRepository,
  });

  Future<List<Account>> call(){
    try{
      return accountsRepository.fetchAccounts();
    }
    catch(_){
      rethrow;
    }

  }
}