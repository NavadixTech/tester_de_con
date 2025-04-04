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
void run_program(void);

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
}

Test(run_program, output_test, .init = redirect_all_stdout)
{
    run_program();
    cr_assert_stdout_eq_str("Hellpdfifeeo, Chocolatine CI!\n");
}
