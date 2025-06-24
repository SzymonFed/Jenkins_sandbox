import pytest
from main import main, add

def test_main(capsys):
    main()
    captured = capsys.readouterr()
    assert "Hello MR Jenkins!!" in captured.out

def test_add():
    assert add(5,5) == 10
    assert add(-5,5) == 0
