from jinja2 import Environment, FileSystemLoader, select_autoescape
import yaml
import click


@click.command()
@click.option('--output', '-o', default='.generated.tex')
@click.option('--data', '-d', default='data.yaml')
def main(output: str, data: str) -> None:
    with open(data) as fh:
        args = yaml.safe_load(fh)
    env = Environment(
        loader=FileSystemLoader('./templates/'),
        autoescape=select_autoescape(),
        # Make the Jinja template language more LaTex-like. This improves e.g.
        # syntax highlighting in the editor.
        block_start_string='\\BLOCK{',
        block_end_string='}',
        variable_start_string='\\VAR{',
        variable_end_string='}',
        comment_start_string='%{',
        comment_end_string='%}',
    )
    template = env.get_template('cv.tex.jinja')
    template.stream(args).dump(output)


if __name__ == '__main__':
    main()
