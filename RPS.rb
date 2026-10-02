loop do
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
while true
  if (0..3).include?(user_hand = gets.to_i)
    break
  else
    puts "不正な値です。0〜3の数字を入力してください。"
  end
end
if (0..3).include?(user_hand)
  program_hand = rand(3) 
  puts "ホイ！"
  hands = ["グー", "チョキ", "パー"]
  puts "--------------------"
  puts "あなた:#{hands[user_hand]}を出しました"
  puts "相手:#{hands[program_hand]}を出しました"
  puts "--------------------"
  else
  puts "不正な値です。0〜3の数字を入力してください。"
end
if user_hand == 3
  puts "戦わないを選択しました。ゲームを終了します。"
  exit
end
while user_hand == program_hand
  puts "あいこで..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  while true
    if (0..3).include?(user_hand = gets.to_i)
      break
    else
      puts "不正な値です。0〜3の数字を入力してください。"
    end
  end
  if (0..3).include?(user_hand)
    program_hand = rand(3) 
    puts "ショ！"
    hands = ["グー", "チョキ", "パー"]
    puts "--------------------"
    puts "あなた:#{hands[user_hand]}を出しました"
    puts "相手:#{hands[program_hand]}を出しました"
    puts "--------------------"
  elsif user_hand == 3
    puts "戦わないを選択しました。ゲームを終了します。"
    exit
  else
    puts "不正な値です。0〜3の数字を入力してください。"
  end
end
if (user_hand == 0 && program_hand == 1) || (user_hand == 1 && program_hand == 2) || (user_hand == 2 && program_hand == 0)
   puts "あっち向いて〜"
   puts "0(上)1(下)2(左)3(右)"
   while true
     if (0..3).include?(user_direction = gets.to_i)
       break
     else
       puts "不正な値です。0〜3の数字を入力してください。"
     end
    end
  
    if (0..3).include?(user_direction)
    program_direction = rand(4) 
    puts "ホイ！"
    directions = ["上", "下", "左", "右"]
    puts "--------------------"
    puts "あなた:#{directions[user_direction]}を出しました"
    puts "相手:#{directions[program_direction]}を出しました"
    puts "--------------------"
  else
    puts "不正な値です。0〜3の数字を入力してください。"
  end
  if user_direction == program_direction
    puts "あなたの勝ちです"
  exit
  break
  end
else 
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  while true
    if (0..3).include?(user_direction = gets.to_i)
      break
    else
      puts "不正な値です。0〜3の数字を入力してください。"
    end
  end
  if (0..3).include?(user_direction)
    program_direction = rand(4) 
    puts "ホイ！"
    directions = ["上", "下", "左", "右"]
    puts "--------------------"
    puts "あなた:#{directions[user_direction]}を出しました"
    puts "相手:#{directions[program_direction]}を出しました"
    puts "--------------------"
  else
    puts "不正な値です。0〜3の数字を入力してください。"
  end
  if user_direction == program_direction
    puts "あなたの負けです"
  exit
  break
  end
end
end