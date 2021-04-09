import click
import sys,os
from datetime import datetime
import subprocess
import errno
from string import punctuation

@click.command()
def cli():
    part = click.prompt("Enter Part section number (ex: 01)")
    module = click.prompt("Enter Module numberr (ex: 01)")
    lesson = click.prompt("Enter Lesson,(ex: 01)")
    title = click.prompt("Title name of the Lesson")
    title_clean = clean_title(title.title())
    bg_slug = slug_title(title_clean)  # create slug
    dir = make_dirs(part,module,lesson)
    md_temp = template()  # load empty template function
    # md_temp, title_clean, dir,part,module, section,lesson, slug
    fill_md(md_temp,title_clean,dir,part,module,lesson,bg_slug)  # load empty template with data and save
    #click.echo(f'Your Lesson is: {lesson}')
    click.echo(f'Your title is: {title}')

def template():
    '''data template for markdown post with variables:
    - title
    - year
    - month
    - day'''
    post_template ="""
# {title}
## {year}-{month}-{day}
---
"""
    return post_template


def clean_title(title):
    '''Clean the title'''
    rem_pun = ''.join(
        c for c in title if c not in punctuation)  # remove punctuations
    clean_title = ' '.join(rem_pun.split())  # remove spaces
    return clean_title

def slug_title(title):
    '''slug the title'''
    slug = title.lower().strip().replace(' ', '-')
    return slug


# part01/module01/lesson/
def make_dirs(part,module,lesson):
    '''create directories'''
    #content
    notes_dir ='content'
    if not os.path.exists(notes_dir):
        os.makedirs(notes_dir)
       # print("{}/\tCREATED".format(notes_dir))
    
    #part section
    part_sec ='{}/Part_{}'.format(notes_dir,part)
    if not os.path.exists(part_sec):
        os.makedirs(part_sec)
        #print("{}/{}\tCREATED".format(notes_dir,part))
       # print('{}'.format(part_sec))

    # module section
    module_sec = '{}/Part_{}/Module_{}'.format(notes_dir,part,module)
    if not os.path.exists(module_sec):
        os.makedirs(module_sec)
        #print("{}/{}/{}\tCREATED".format(notes_dir,part,module))
        print('{}'.format(module_sec))

    # lesson section
    lession_sec = '{}/Part_{}/Module_{}/Lesson_{}'.format(notes_dir,part,module,lesson)
    if not os.path.exists(lession_sec):
        os.makedirs(lession_sec)
        #print("{}/{}/{}\tCREATED".format(notes_dir,part,module))
        print('{}'.format(lession_sec))


    return lession_sec

def fill_md(md_temp, title_clean, dir,part,module,lesson, slug):
    today = datetime.today()
    part = 'P{}'.format(part[-2:])
    module = 'M{}'.format(module[-2:])
    lesson = 'S{}'.format(lesson[-2:])
    # part01/module01/lesson/
    md_file = "{}/{}{}{}-{}.md".format(dir,part,module,lesson,slug)
    # md_file = "{}/CH{}-{}.md".format(
    #     dir,lesson,
    #      slug)
    md_post = md_temp.strip().format(title=title_clean.title(),
                                     year=today.year,
                                     month='{:02d}'.format(today.month),
                                     day='{:02d}'.format(today.day))
    if not os.path.exists(md_file):
        with open(md_file, 'w') as w:
            w.write(md_post)
        print("{}\tCREATED".format(md_file))
    else:
        print('{}\tEXIST'.format(md_file))

if __name__ =='__main__':
    cli()