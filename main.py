import re

# region task1

# Напишите функцию, которая принимает на вход строку
# и для каждого "Особенного номера", встречающегося в строке,
# выводит соответствующий "Хороший номер".

def num_convert_special_to_good(src_str: str):
    """
    Преобразовать в строке каждый «Особенный номер» в «Хороший номер»

    :param src_str: исходная строка
    """

    special_nums = re.findall(r"\b\d{2,4}\\\d{2,5}\b", src_str)

    print('\nВывод списка хороших номеров:')
    for special_num in special_nums:
        part1, part2 = special_num.split('\\')
        print(f'{part1.zfill(4)}\\{part2.zfill(5)}')

# endregion


# region task2

# Напишите функцию, которая добавляет k банкоматов таким образом,
# чтобы максимальное расстояние между соседними банкоматами являлось минимально возможным,
# и возвращает список новых расстояний между банкоматами.

def add_atms(n: int, k: int, distances):
    """
    Добавление k-банкоматов,
    чтобы максимальное расстояние между соседними банкоматами являлось минимально возможным

    :param n: n-банкоматов уже существующих
    :param k: k-банкоматов к постройке
    :param distances: n-1 расстояний L, где L[i] – расстояние между банкоматами i и i+1
    :return: список новых расстояний между банкоматами
    """

    total_atms = n + k
    distances.sort()

    # Распределение новых банкоматов
    new_distances = []
    for i in range(k):
        new_position = (distances[i] + distances[-(i + 1)]) / 2
        distances.insert(-(i + 1), new_position)

    # Пересчет расстояний с учетом существующих и новых банкоматов
    current_distance = 0
    for i in range(total_atms - 1):
        new_distances.append(current_distance)
        current_distance += distances[i]

    new_distances.append(current_distance)  # Добавление последнего расстояния

    return new_distances


# endregion


# region task3

# Напишите функцию, которая принимает на вход список строк, состоящих из цифр,
# и возвращает максимальное возможное число,
# которое может получиться в результате конкатенации всех строк из этого списка.

def max_num(str_list):
    """
    Функция рассчитывающая максимальное возможное число в результате конкатенации всех строк из этого списка

    :param str_list: список строк, состоящих из цифр
    :return: максимальное число
    """

    # Сортировка строки в порядке убывания
    sorted_strings = sorted(str_list, key=lambda x: x * 3, reverse=True)

    # Объединение строк и перевод в целое число
    return int(''.join(sorted_strings))


# endregion


if __name__ == '__main__':
    # intro to task1
    print("Python Task #1\n"
          "Функция принимает на вход строку и для каждого особенного номера,\n"
          "встречающегося в строке, выводит соответствующий хороший номер\n\n"
          "    Особенный номер – строка формата    [2-4 цифры]\\[2-5 цифр]\n"
          "      Хороший номер - строка формата      [4 цифры]\\[5 цифр]")

    # input
    src_str = input('\nПожалуйста, введите строку, которая содержит один или более \'Особенный номер\'\n'
                    'Пример: Адрес 5467\\456. Номер 405\\549: ')

    # use example task1
    num_convert_special_to_good(src_str)

    # intro to task2
    print("\nPython Task #2\n")

    # use example task2
    new_distances = add_atms(5, 3, [100, 30, 20, 80])
    for distance in new_distances:
        print(f'{distance:.1f}')

    # intro to task3
    print("\nPython Task #3\n")

    # use example task3
    print(max_num(['41', '4', '005', '89']))
