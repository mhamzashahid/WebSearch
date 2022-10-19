import 'package:websearch/accounts/domain/entities/account.dart';
import 'package:websearch/accounts/domain/repo_interfaces/accounts_repository.dart';

class SearchAccountsUseCase{
  final AccountsRepository accountsRepository;

  const SearchAccountsUseCase({
    required this.accountsRepository,
  });

  Future<List<Account>> call(String query){
    try{
      return accountsRepository.searchAccounts(query);
    }
    catch(_){
      rethrow;
    }

  }
}