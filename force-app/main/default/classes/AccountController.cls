public with sharing class AccountController {

    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String searchKey) {
        system.debug('release 2 branch ');
        String key = '%' + searchKey + '%';
        system.debug('release 1 brach');
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }

}