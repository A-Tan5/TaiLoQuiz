//
//  QuizModel.swift
//  TaiLoQuiz
//
//  Created by tantsunsin on 2020/8/1.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import Foundation

struct QandA {
    var Question : String
    var OptionA : String
    var OptionB : String
    var OptionC : String
    var OptionD : String
    var Answer : String
}


var QandAArray : [QandA] = [
    QandA(Question: "台羅中的p，發音最接近下列哪一個注音符號？", OptionA: "ㄆ", OptionB: "ㄅ", OptionC: "ㄇ", OptionD: "ㄌ", Answer: "ㄅ"),
    QandA(Question: "「tshá」應為下列哪一個漢字的音？", OptionA: "差", OptionB: "查", OptionC: "吵", OptionD: "插", Answer: "吵"),
    QandA(Question: "台羅中的ts，發音最接近下列哪一個注音符號？", OptionA: "ㄗ", OptionB: "ㄑ", OptionC: "ㄘ", OptionD: "ㄔ", Answer: "ㄗ"),
    QandA(Question: "「行路」對應的台羅拼音是？", OptionA: "kiân-lōo", OptionB: "kiânn-lōo", OptionC: "giân-lōo", OptionD: "giânn-lōo", Answer: "kiânn-lōo"),
    QandA(Question: "「衫褲」對應的台羅拼音是？", OptionA: "san-kòo", OptionB: "sann-khòo", OptionC: "san-kò", OptionD: "sann-kòo", Answer: "sann-khòo"),
    QandA(Question: "已知「相拍」的「拍」是第四聲，「拍」字的羅馬拼音是？", OptionA: "phà", OptionB: "pha̍h", OptionC: "phah", OptionD: "phā", Answer: "phah"),
    QandA(Question: "「我昨昏才行過遐。」，此句中「行過」兩字的羅馬拼音是？", OptionA: "kiânn-kuè", OptionB: "kiânn--kuè", OptionC: "kiânn-kué", OptionD: "kiânn--kué", Answer: "kiânn-kuè"),
    QandA(Question: "「我昨昏才對遐行過。」，此句中「行過」兩字的羅馬拼音是？", OptionA: "kiânn-kuè", OptionB: "kiânn--kuè", OptionC: "kiânn-kué", OptionD: "kiânn--kué", Answer: "kiânn--kuè"),
    QandA(Question: "「高雄」對應的台羅拼音是？", OptionA: "koo-hiông", OptionB: "koh-hiông", OptionC: "kuo-hiông", OptionD: "ko-hiông", Answer: "ko-hiông"),
    QandA(Question: "「見笑轉受氣」一句中，已知「見」字受後字影響，變調為第二聲，請問「見」字的羅馬拼音應寫做？", OptionA: "kán", OptionB: "kàn", OptionC: "kián", OptionD: "kiàn", Answer: "kiàn")
]
