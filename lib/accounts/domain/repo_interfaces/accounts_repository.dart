
import 'package:websearch/accounts/domain/entities/account.dart';

abstract class AccountsRepository{

  Future<List<Account>> fetchAccounts();

  Future<List<Account>> searchAccounts();

  Future<List<Account>> filterAccounts();

  Future<List<String>> fetchStateCodes();

  Future<List<String>> fetchStates();

}