import re

# S B E R - Python Test Tasks


# region task1

# Напишите функцию, которая принимает на вход строку
# и для каждого "особенного номера", встречающегося в строке,
# выводит соответствующий "хороший номер".

def num_convert_special_to_good(src_str: str):
    """
    Converting in string each "Special number" to "Good number"
    :param src_str: input string
    """

    special_nums = re.findall(r"\d{2,4}\\\d{2,5}", src_str)

    print('\nВывод списка хороших номеров:')
    for special_num in special_nums:
        backslash_index = special_num.find('\\')
        part1 = special_num[:backslash_index]
        part2 = special_num[backslash_index+1:]
        while len(part1) < 4:
            part1 = '0' + part1
        while len(part2) < 5:
            part2 = '0' + part2
        print(f'{part1}\\{part2}')

# endregion


if __name__ == '__main__':
    # intro
    print("Python Task #1\n"
          "Функция принимает на вход строку и для каждого особенного номера,\n"
          "встречающегося в строке, выводит соответствующий хороший номер\n\n"
          "    Особенный номер – строка формата    [2-4 цифры]\\[2-5 цифр]\n"
          "      Хороший номер - строка формата      [4 цифры]\\[5 цифр]")

    # input
    src_str = input('Пожалуйста, введите строку, которая содержит один или более \'Особенный номер\'\n'
                    'Пример: Адрес 5467\\456. Номер 405\\549: ')

    # add Menu
    num_convert_special_to_good(src_str)

