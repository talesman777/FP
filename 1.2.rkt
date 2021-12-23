#lang scheme
(define (odd-numbers current-string current-number) ; процедура виведення всіх непарних чисел, менших за n та більших за 0
  (if (= current-number 0) ; умова виходу з рекурсії
      current-string ; повернення кінцевого рядкового значення
      (if (odd? current-number) ; перевірка, чи є число непарним
          (odd-numbers (string-append current-string (number->string current-number) " ") (- current-number 1)) ; рекурсивний виклик процедури для рядка з конткатенованим поточним значенням 
          ; ... для наступного значення
         (odd-numbers current-string (- current-number 1)) ; рекурсивний виклик процедури для незміненого рядка та наступного значення
       )
   )
)
(display "Завдання 14.2\n")
(display "Для введеного значення n отримано послідовність:\n")
(odd-numbers "" (read))