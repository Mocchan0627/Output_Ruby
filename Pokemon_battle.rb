require "./Pokemon_date"

def x_attack(x,y)
    if x.at > x.co
        if rand(0..99) - ((y.sp - x.sp)/2) < 0
            puts "#{x.name}の攻撃"
            puts "#{y.name}は攻撃をよけた！"
        else
            damege = ((22 * x.at / y.bl / 1.6) + 2) * rand(85..100) / 100
            y.hp -= damege.floor    
            puts "#{x.name}の攻撃"
            puts "#{y.name}に#{damege.floor}のダメージ"    
        end
    else
        if rand(0..99) - ((y.sp - x.sp)/2) < 0
            puts "#{x.name}の攻撃"
            puts "#{y.name}は攻撃をよけた！"
        else
            damege = ((22 * x.co / y.di / 1.6) + 2) * rand(85..100) / 100
            y.hp -= damege.floor
            puts "#{x.name}の攻撃"
            puts "#{y.name}に#{damege.floor}のダメージ"    
        end
    end
end

def y_attack(x,y)
    if y.at > y.co
        if rand(0..99) - ((x.sp - y.sp)/2) < 0
            puts "#{y.name}の攻撃"
            puts "#{x.name}は攻撃をよけた！"
        else
            damege = ((22 * y.at / x.bl / 1.6) + 2) * rand(85..100) / 100
            x.hp -= damege.floor    
            puts "#{y.name}の攻撃"
            puts "#{x.name}に#{damege.floor}のダメージ"    
        end
    else
        if rand(0..99) - ((x.sp - y.sp)/2) < 0
            puts "#{y.name}の攻撃"
            puts "#{x.name}は攻撃をよけた！"
        else
            damege = ((22 * y.co / x.di / 1.6) + 2) * rand(85..100) / 100
            y.hp -= damege.floor
            puts "#{y.name}の攻撃"
            puts "#{x.name}に#{damege.floor}のダメージ"    
        end
    end
end

def judge(x,y)
    if x.hp < 0
        x.hp = 0
        return 0
    elsif y.hp <0
        y.hp = 0
        return 0
    end
end

def battle(x,y)
    if x.sp > y.sp
        x_attack(x,y)
        if judge(x,y) != 0
            y_attack(x,y)
            judge(x,y)
        end
    else
        y_attack(x,y)
        if judge(x,y) != 0
            x_attack(x,y)
            judge(x,y)
        end
    end
end

def fin(a,b)
    if a.hp == 0
        puts "#{a.name}戦闘不能    #{b.name}の勝ち！！！"
    else
        puts "#{b.name}戦闘不能    #{a.name}の勝ち！！！"
    end
end

poke1 = Pokemon.new(name:"ジュカイン",type:"くさ",hp:145,at:105,bl:85,co:125,di:105,sp:140)
poke2 = Pokemon.new(name:"バシャーモ",type:"ほのお",hp:155,at:140,bl:90,co:130,di:90,sp:100)
poke3 = Pokemon.new(name:"ラグラージ",type:"みず",hp:175,at:130,bl:110,co:105,di:110,sp:80)

pokes = [poke1,poke2,poke3]

turn = 1
index = 0
p1 = 0
p2 = 0

while p1 != 1 && p1 != 2 && p1 != 3
    puts "プレイヤー１さん　ポケモンを選んでください"
    pokes.each do |poke|
        puts "#{index+1}. #{poke.name}"
        index += 1
    end
    index = 0
    p1 = gets.chomp.to_i
end

poke_1 = pokes[p1-1]

while p2 != 1 && p2 != 2 && p2 != 3
    puts "プレイヤー２さん　ポケモンを選んでください"
    pokes.each do |poke|
        puts "#{index+1}. #{poke.name}"
        index += 1
    end
    index = 0
    p2 = gets.chomp.to_i
end

poke_2 = pokes[p2-1]


puts "*******************"
puts "戦闘開始"
puts "*******************"

while poke_1.hp>0 && poke_2.hp>0
    puts "------------"
    puts "#{turn}ターン目"
    puts "------------"
    battle(poke_1,poke_2)
    puts "#{poke_1.name}の残りHP: #{poke_1.hp}"
    puts "#{poke_2.name}の残りHP: #{poke_2.hp}"
    turn += 1
    sleep 3
end

sleep 2
puts "*******************"
puts "決着"
puts "*******************"

fin(poke_1,poke_2)