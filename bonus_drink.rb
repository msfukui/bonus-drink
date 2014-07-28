class BonusDrink
  def self.total_count_for(amount)
    raise ArgumentError unless amount.is_a?(Integer)

    rest  = 0 # 今持っている瓶の数。
    count = 0 # まだ飲んでない数。
    total = 0 # これまで飲んだ数。

    # 最初に駄菓子屋のおばちゃんから購入。
    count = amount
    rest  = amount

    # 全部飲む。
    count = 0
    total = amount

    # もう引き換えられなくなる（=手持ちの瓶が2本以下になる）
    # まで駄菓子屋のおばちゃんに交渉する。
    while rest > 2 do

      # 駄菓子屋のおばちゃんに瓶を渡して引き換えてもらう。
      count = rest / 3
      rest  = (rest % 3) + count

      # 全部飲む。
      total += count
    end

    # 飲んだ数を返す。
    total
  end
end
