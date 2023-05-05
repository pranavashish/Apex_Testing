public class Friends{

       
        public Integer calcPrice(Integer slices){
         Integer Total = 0;
            if(slices == 1){
                Total = 8;
            } else if ( slices <= 3 ){
                Total = 7*slices;
            } else {
                Total = 6*slices;
            }
            System.debug(Total);
            return Total;
        }

}