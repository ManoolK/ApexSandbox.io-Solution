public String divide(Integer a, Integer b){
    try {
        return String.valueOf(a / b);
    } catch (System.Exception ex) {
        return ex.getMessage();
    }
}
