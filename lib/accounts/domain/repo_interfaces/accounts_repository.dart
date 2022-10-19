
import 'package:websearch/accounts/domain/entities/account.dart';

abstract class AccountsRepository{

  Future<List<Account>> fetchAccounts();

  Future<List<Account>> searchAccounts(String query);

  Future<List<Account>> filterAccounts(String key, String vlaue);

  Future<List<String>> fetchStateCodes();

  Future<List<String>> fetchStates();

}