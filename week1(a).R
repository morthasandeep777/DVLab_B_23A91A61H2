
exam_data = data.frame(
  name = c('bhAAi', 'Sandy', 'Akkawwww', 'HappyMan', 'RoseRaja',
           'GanjaiMarco', 'HandsomeVardhan', 'FlashManBalaji',
           'PraBoss', 'CarrotDinesh'),
  score = c(0, 20, 20, 16, 12, 10, 19, 20, 18, 19),
  attempts = c(3, 1, 1, 2, 1, 1, 1, 2, 1, 1),
  qualify = c('no', 'yes', 'yes', 'yes', 'yes',
              'yes', 'yes', 'yes', 'no', 'yes')
)

print("Original dataframe:")
print(exam_data)

print("Extract 3rd and 1st row with 1st and 3rd columns:")
result = exam_data[c(3, 1), c(1, 3)]
print(result)
