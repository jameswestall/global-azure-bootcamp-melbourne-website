#!/usr/bin/env python3
""" Short description of this Python module.

Longer description of this module.

"""

import sample_data.standardclass as standardclass
import sample_package.sample_module as sample_module
import utils.console_helper as console
import utils.logging_helper as logging
import utils.profiling_helper as profiler

# ******************************************************************************** #


def simple_function():
    print("A simple function")


# ******************************************************************************** #
@logging.log
# @profiler.profile_func
def add_numbers(num1: int, num2: int) -> int:
    """adds two numbers

    Args:
        num1 (int): Value 1
        num2 (int): Value 2_description_

    Returns:
        int: sum of numbers
    """
    return num1 + num2


# ******************************************************************************** #


@profiler.profile_func
def main():
    print("Hello World!")

    """Example function with types documented in the docstring.

    `PEP 484`_ type annotations are supported. If attribute, parameter, and
    return types are annotated according to `PEP 484`_, they do not need to be
    included in the docstring:

    Parameters
    ----------
    param1 : int
        The first parameter.
    param2 : str
        The second parameter.

    Returns
    -------
    bool
        True if successful, False otherwise.

    .. _PEP 484:
        https://www.python.org/dev/peps/pep-0484/


    """
    console.print_ok_message("** This is the main method.** ")

    simple_function()

    nums_test = add_numbers(50, 50)
    print(f"Adding nums: {nums_test}")

    sample_class = standardclass.StandardClass(100)
    print(f"From Class instance: {sample_class.return_some_value()}")

    print(f"From module: {sample_module.sample_function()}")


# ******************************************************************************** #

if __name__ == "__main__":
    main()
