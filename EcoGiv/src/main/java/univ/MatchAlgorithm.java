package univ;

import java.util.*;

public class MatchAlgorithm {

    private static final Map<Integer, Integer> answerToCategoryMap = new HashMap<>();

    static {
        // 각 답변을 카테고리에 매핑
        answerToCategoryMap.put(1, 1);
        answerToCategoryMap.put(2, 2);
        answerToCategoryMap.put(3, 3);
        answerToCategoryMap.put(4, 4);
        answerToCategoryMap.put(5, 5);
        answerToCategoryMap.put(6, 6);
        answerToCategoryMap.put(7, 7);
        answerToCategoryMap.put(8, 8);
        answerToCategoryMap.put(9, 9);
        answerToCategoryMap.put(10, 10);
        answerToCategoryMap.put(11, 11);
        answerToCategoryMap.put(12, 12);
    }

    public static int determineCategoryIndex(int[] answers) {
        Random random = new Random();
        int randomAnswerIndex = random.nextInt(answers.length);  // 랜덤 인덱스 선택
        int selectedAnswer = answers[randomAnswerIndex];  // 랜덤 선택된 답변
        return answerToCategoryMap.get(selectedAnswer);  // 매핑된 카테고리 반환
    }
}
