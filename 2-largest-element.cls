public static Integer findLargest(List<Integer> nums) {
	nums.sort();
    return nums[nums.size()-1];
}
