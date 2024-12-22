from operator import mul,add

def twenty_twenty_four():
    """Come up with the most creative expression that evaluates to 2024
    using only numbers and the +, *, and - operators.

    >>> twenty_twenty_four()
    2024
    """
    first = add(24,mul(20,mul(10,10)))
    return first

twenty_twenty_four
