public static Integer findLast(List<Integer> nums, Integer target) {
    Integer res = -1;
    if (nums == null) return res;
    for (Integer i = 0; i < nums.size(); i++) {
        if (nums[i] == target) {
            res = i;
        }
    }
    return res;
}
