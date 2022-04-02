# CV

This is, admittedly, over-engineered. But I wanted to try out how well Jinja and
LaTex synergize.

To build, run `pip install -r requirements.txt` and then `make`. This will
generate `generated.tex` and `cv.pdf`, using the template in `./templates/` and
the data in `data.yaml`.

Alternatively, run `./build.py` directly. See `./build.py --help` for that.
