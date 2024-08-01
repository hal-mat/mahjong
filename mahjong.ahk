#Requires AutoHotkey v2.0

pai_tally := {}
#ここは画像認識で何とかする
Recursive(pai_tally, mentsu:=0, shanten: = 12) {
    if (mentsu <= 4) {
        # 最上位から刻子と順子を抜き、メンツを1増やしてシャンテンを3減らす
        # 最上位から対子とターツを抜き、メンツを1増やしてシャンテンを2減らして有効牌を追加
        # 最上位から1枚抜き、メンツを1増やしてシャンテンを1減らして有効牌を追加
        # 最上位から1枚抜く
    }
    # 雀頭がある場合は-2シャンテン、ない場合は-1して有効牌を追加
    # シャンテン数最小の物を抜き出し、有効牌一覧を返す
}
TripletOf(pai) {
    answer := [{pai: 3}]
    if !(pai.suit = "z" || pai.num < 3) {
        answer.push({PrevPai(pai,2): 1, PrevPai(pai): 1})
    }
    return answer
}

PrevPai(pai, prev:=1) {
    new_num := pai.num - prev
    if pai.suit = "z" || new_num < 1 {
        throw ValueError("cannot back!")
    }
    return {suit: pai.suit, num: new_num}
}