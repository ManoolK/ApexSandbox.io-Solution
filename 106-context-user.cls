public Map<String,String> getContextUserInformation(){
    Map<String, String> usrInfo = new Map<String, String>();
    usrInfo.put('UserName', UserInfo.getUserName());
    usrInfo.put('ProfileId', UserInfo.getProfileId());
    usrInfo.put('EmailId', UserInfo.getUserEmail());
    usrInfo.put('Type', UserInfo.getUserType());
    return usrInfo;
}
