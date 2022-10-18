
import 'package:websearch/accounts_master_page/domain/entities/account.dart';

abstract class AccountsRepository{

  Future<List<Account>> fetchAccounts();

  Future<List<Account>> searchAccounts();

  Future<List<Account>> filterAccounts();

  Future<List<String>> fetchStateCodes();

  Future<List<String>> fetchStates();

}