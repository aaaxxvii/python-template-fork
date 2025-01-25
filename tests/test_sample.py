import pytest

from src.sample import add


@pytest.mark.parametrize(
    "a, b, expected",
    [
        (1, 2, 3),
        (0, 0, 0),
        (-1, 1, 0),
        (-2, -3, -5),
        (1000, 2000, 3000),
        (1, -1, 0),
        (0, 5, 5),
        (5, 0, 5),
    ],
)
def test_add(a, b, expected):
    assert add(a, b) == expected
