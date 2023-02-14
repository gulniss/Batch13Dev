public class Datetime_Assignment {
    public void diffofDate() {
        date varTomorrowDate = date.newInstance(2023, 1, 19);
        date varTodaysDate = date.newInstance(2023, 1, 18);
        Integer diffOfDays = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('Difference between varTomorrowdate and varTodaysDate is : ' + diffOfDays);   
    }

    public void timeCheck() {
        Datetime varTomorrowDateTime = Datetime.newInstance(2023, 1, 19, 7, 0, 0);
        Datetime var10DaysDateTime = Datetime.newInstanceGmt(2023, 1, 28, 9, 0, 0);
        Long varDateTimeLong = 1233987436L;
        system.debug('The value of varDateTimeLong is ' + varDateTimeLong);
        Datetime add7Days = varTomorrowDateTime.addDays(7);
        system.debug('If we add 7 days to varTomorrowDateTime we get: ' + add7Days);
        Datetime add10Days = var10DaysDateTime.addDays(10);
        system.debug('If we add 10 days to var10DaysDateTime we get: ' + add10Days);
    }

}