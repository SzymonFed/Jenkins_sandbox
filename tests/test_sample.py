import pytest
from main import main

def test_main(capsys):
    main()
    captured = capsys.readouterr()
    assert "Hello MR Jenkins!!" in captured.out