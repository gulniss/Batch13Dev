public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(2004, 06, 3);
        date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('My daughters age in months => ' + ageInMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('My daughters age in days => ' + ageInDays);
    }

    public void birthDatetimeInMS(){
        Datetime birthDT = datetime.newInstance(2004, 6, 3, 2, 20, 00);
        long millisecBirthDT = birthDT.getTime();
        system.debug('birth datetime in milliseconds is ' + millisecBirthDT);
    }

    //3. Create one method printSubscriptionEndDate()
    public void printSubscriptionEndDate(){
        date subStartDate = date.today();
        //get endDate if subscription is done for 1000 days
        date subEndDate = subStartDate.addDays(1000);
        system.debug('subs end date is ' + subEndDate);

        integer endYear = subEndDate.year();
        integer endMonth = subEndDate.month();
        system.debug('end year is ' + endYear);
        system.debug('end month is ' + endMonth);
    }

    //4.Create one method printOfferEndDateTime()
    public void printOfferEndDateTime(){
        datetime offerStart = DateTime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime is ' + offerEnd);

        date offerEndDate = offerEnd.date();
        system.debug('date of offer end ' + offerEndDate);
    }
    
}