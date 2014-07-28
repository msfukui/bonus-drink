#!/usr/bin/env ruby

require_relative 'bonus_drink'

# 何本買ったか。
n = 100

# 何本飲めるか。
print "#{n}: #{BonusDrink.total_count_for(n)}\n"
