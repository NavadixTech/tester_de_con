/*
** EPITECH PROJECT, 2025
** tester_de_con
** File description:
** main
*/

#include <criterion/criterion.h>

Test(simple_test, test_egalite)
{
    cr_assert_eq(1 + 1, 2, "1 + 1 devrait être égal à 2");
}

Test(simple_test, test_inegalite, .exit_code = 1)
{
    cr_assert_eq(2 + 2, 5, "2 + 2 ne devrait pas être égal à 5");
}


Test(simple_test, test_zero)
{
    cr_assert_neq(0, 1, "0 ne devrait pas être égal à 1");
}