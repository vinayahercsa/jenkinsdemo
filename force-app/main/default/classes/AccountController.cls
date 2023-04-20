public with sharing class AccountController {

    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String searchKey) {
        system.debug('release 1 brach');
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }

}