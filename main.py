# S B E R - Python Test Tasks


# region task1

# Напишите функцию, которая принимает на вход строку
# и для каждого "особенного номера", встречающегося в строке,
# выводит соответствующий "хороший номер".

def num_convert_special_to_good():
    """
    Task #1: Convert format special number to good number

    input:
        special_num: string format "2-4num\2-5num"
    output:
        good_num: string format "4num\5num"
    """

    # ПОКОЛДОВАТЬ НАД НАЗВАНИМИ ПЕРЕМЕННЫХ ДЛЯ ЛУЧШЕГО ПОНИМАНИЯ

    # TRY

    # input
    special_num = input('Please, input \'Special number\' (format: \'Some-word 2-4num\\2-5num\'): ')

    # removing 'Some-word' from beginning of input string
    some_word_index = special_num.rfind(' ')
    special_num = special_num[some_word_index+1:]

    # split special_num into part1 and part2
    slash_index = special_num.rfind('\\')  # if slash_index == -1  ->  ex
    str_part1 = special_num[:slash_index]  # if len(str_part1) > 4 || len(str_part1) < 2  ->  ex
    str_part2 = special_num[slash_index+1:]  # if len(str_part2) > 5 || len(str_part2) < 2  ->  ex

    # CATCH

    # function for converting
    def conv_to_good_num(str_part, n):
        """
        Convert format special number to good number
        :param str_part: source number
        :param n: max length
        :return: converted number
        """

        result_str_part = str_part

        if len(result_str_part) != n:
            while len(result_str_part) != n:
                result_str_part = f'0{result_str_part}'
            return result_str_part
        return result_str_part

    # converting special number to good number
    good_num = f'{conv_to_good_num(str_part1, 4)}\\{conv_to_good_num(str_part2, 5)}'

    # output
    print(f'Result \'Good number\': {good_num}')

# endregion


if __name__ == '__main__':
    # add Menu
    num_convert_special_to_good()
