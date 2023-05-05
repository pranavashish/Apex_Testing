public class Fitness {


        public static Decimal calculateBMI(Decimal W, Decimal H){
            if(W<=0 || H<=0){
                return -1;
            }
             Decimal BMI = W / (H*H);
    //         System.debug(BMI);
             return BMI;
            
        } 
        
        public static Decimal calculatePace(Decimal KM, Decimal MIN){
             if(KM<=0 || MIN<=0){
                return -1;
            }

            Decimal HR = MIN /60;
             Decimal Pace = KM / HR;
      //       System.debug(Pace);
             return Pace;
            
        } 
 
 
 
}