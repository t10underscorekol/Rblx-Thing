-- для лучшего понимания используйте https://www.epochconverter.com/
local TimeLimetedKeys = {}
TimeLimetedKeys["hacker"] = { 
  expiresIn = 1716822000+86400 -- начало: понедельник, 27 мая 2024 г., 18:00:00 GMT+03:00 конец: вторник, 28 мая 2024 г., 18:00:00 GMT+03:00
}
TimeLimetedKeys["kol"] = { 
  expiresIn = 1716908400+172800 -- начало: вторник, 28 мая 2024 г., 18:00:00 GMT+03:00 конец: четверг, 30 мая 2024 г., 18:00:00 GMT+03:00
}
TimeLimetedKeys["expired"] = {
  expiresIn = 0
}
return TimeLimetedKeys
