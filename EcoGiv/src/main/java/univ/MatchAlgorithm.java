package univ;

import java.util.HashMap;
import java.util.Map;

public class MatchAlgorithm {

    private static final Map<Integer, String> categoryMap = new HashMap<>();

    static {
        categoryMap.put(1, "아마존 보호");
        categoryMap.put(2, "해양 보호");
        categoryMap.put(3, "생물 다양성");
        categoryMap.put(4, "플라스틱 제로");
        categoryMap.put(5, "디톡스 아웃도어");
        categoryMap.put(6, "불법 어업 근절");
        categoryMap.put(7, "기후참정권");
        categoryMap.put(8, "Rethink IT");
        categoryMap.put(9, "기업 100% 재생에너지 전환");
        categoryMap.put(10, "탈원전");
        categoryMap.put(11, "위험한 석탄 투자");
        categoryMap.put(12, "북극 보호");
    }

    public static int determineCategoryIndex(int[] answers) {
        Map<String, Integer> categoryCount = new HashMap<>();

        for (int answer : answers) {
            String category = categoryMap.get(answer);
            categoryCount.put(category, categoryCount.getOrDefault(category, 0) + 1);
        }

        String maxCategory = "";
        int maxCount = 0;

        for (Map.Entry<String, Integer> entry : categoryCount.entrySet()) {
            if (entry.getValue() > maxCount) {
                maxCount = entry.getValue();
                maxCategory = entry.getKey();
            }
        }

        for (Map.Entry<Integer, String> entry : categoryMap.entrySet()) {
            if (entry.getValue().equals(maxCategory)) {
                return entry.getKey();
            }
        }

        return 1; // 기본값으로 첫 번째 캠페인 인덱스를 반환
    }
}
