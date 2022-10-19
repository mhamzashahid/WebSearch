import 'package:websearch/accounts/domain/entities/account.dart';
import 'package:websearch/accounts/domain/repo_interfaces/accounts_repository.dart';

class FilterAccountsUseCase{
  final AccountsRepository accountsRepository;

  const FilterAccountsUseCase({
    required this.accountsRepository,
  });

  Future<List<Account>> call(String key, String value){
    try{
      return accountsRepository.filterAccounts(key, value);
    }
    catch(_){
      rethrow;
    }

  }
}