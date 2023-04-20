public class datevalue {
private static string validateDateFormat(String dateString){
    String dateFormat;
if (dateString.contains('/')) {
    if (dateString.split('/')[0].length() == 4) {
        dateFormat = 'yyyy/MM/dd';
    } else {
        dateFormat = 'MM/dd/yyyy';
    }
} else {
    dateFormat = 'unknown';
}
System.debug(dateFormat);
return dateFormat;
}
    public static void datecheck(String st){
   String format=validateDateFormat(st);
        if(format=='MM/dd/yyyy'){
system.debug(st);
date mydate = date.parse(st);
            system.debug('inside dd'+mydate);
        }
        if(format=='yyyy/MM/dd'){
            String strep = st.replace('/', '-');
 Date date1 = (Date) JSON.deserialize('"' + strep + '"', Date.class);
        
    system.debug('inside yy'+date1);
        }
       
        
    }}