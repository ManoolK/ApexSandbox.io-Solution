public List<String> getFieldsValue(Account acc, List<String> fields)
{
    List<String> result = new List<String>();
    for (String fieldName : fields) {
        result.add(String.valueOf(acc.get(fieldName)));
    }
    return result;
}
