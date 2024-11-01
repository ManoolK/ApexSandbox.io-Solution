public Integer findTargetCount(List<Integer> nums, Integer target) {
    Integer count = 0;
    for (Integer num : nums) {
        count += num == target ? 1 : 0;
    }
    return count;
}
