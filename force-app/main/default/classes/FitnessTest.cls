@isTest
public class FitnessTest {
  @isTest
  public static void getBMI() {
    Decimal W = 146;
    Decimal H = 1.72;
    Decimal BMI = Fitness.calculateBMI(W, H);
    System.assertEquals(49.3510005408328826392644672796106, BMI, 'Galat');
  }

  @isTest
  public static void getBMI1() {
    Decimal W = 0;
    Decimal H = 1.72;
    Decimal BMI = Fitness.calculateBMI(W, H);
    System.assertEquals(-1, BMI, 'Galat');
  }

  @isTest
  public static void getBMI2() {
    Decimal W = 146;
    Decimal H = 0;
    Decimal BMI = Fitness.calculateBMI(W, H);
    System.assertEquals(-1, BMI, 'Galat');
  }

  @isTest
  public static void getBMI3() {
    Decimal W = -146;
    Decimal H = 1.72;
    Decimal BMI = Fitness.calculateBMI(W, H);
    System.assertEquals(-1, BMI, 'Galat');
    System.debug('System Faad Dunga');
  }

  @isTest
  public static void getBMI4() {
    Decimal W = 146;
    Decimal H = -1.72;
    Decimal BMI = Fitness.calculateBMI(W, H);
    System.assertEquals(-1, BMI, 'Galat');
  }

  // PACE

  @isTest
  public static void getPace() {
    Decimal KM = 10;
    Decimal MIN = 60;
    Decimal PACE = Fitness.calculatePace(KM, MIN);
    System.assertEquals(10, PACE, 'Galat');
  }
  @isTest
  public static void getPace1() {
    Decimal KM = 10;
    Decimal MIN = 0;
    Decimal PACE = Fitness.calculatePace(KM, MIN);
    System.assertEquals(-1, PACE, 'Galat');
  }
  @isTest
  public static void getPace2() {
    Decimal KM = 0;
    Decimal MIN = 60;
    Decimal PACE = Fitness.calculatePace(KM, MIN);
    System.assertEquals(-1, PACE, 'Galat');
  }
  @isTest
  public static void getPace3() {
    Decimal KM = -10;
    Decimal MIN = 60;
    Decimal PACE = Fitness.calculatePace(KM, MIN);
    System.assertEquals(-1, PACE, 'Galat');
  }
  @isTest
  public static void getPace4() {
    Decimal KM = 10;
    Decimal MIN = -60;
    Decimal PACE = Fitness.calculatePace(KM, MIN);
    System.assertEquals(-1, PACE, 'Galat');
  }
}