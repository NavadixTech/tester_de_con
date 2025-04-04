/*
** EPITECH PROJECT, 2025
** B-DOP-200-MLN-2-1-chocolatine-sacha.lamour
** File description:
** test_main
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include <stdio.h>

int main(void);

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
}

Test(main, output_test, .init = redirect_all_stdout)
{
    main();
    cr_assert_stdout_eq_str("Hello,     Chocolatine CI!\n");
}
